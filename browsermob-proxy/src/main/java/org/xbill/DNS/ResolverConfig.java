// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.*;
import java.lang.reflect.Method;
import java.util.*;

// TODO: Auto-generated Javadoc
/**
 * A class that tries to locate name servers and the search path to be appended
 * to unqualified names.
 * 
 * The following are attempted, in order, until one succeeds.
 * <UL>
 * <LI>The properties 'dns.server' and 'dns.search' (comma delimited lists) are
 * checked. The servers can either be IP addresses or hostnames (which are
 * resolved using Java's built in DNS support).
 * <LI>The sun.net.dns.ResolverConfiguration class is queried.
 * <LI>On Unix, /etc/resolv.conf is parsed.
 * <LI>On Windows, ipconfig/winipcfg is called and its output parsed. This may
 * fail for non-English versions on Windows.
 * <LI>"localhost" is used as the nameserver, and the search path is empty.
 * </UL>
 * 
 * These routines will be called internally when creating Resolvers/Lookups
 * without explicitly specifying server names, and can also be called directly
 * if desired.
 * 
 * @author Brian Wellington
 * @author <a href="mailto:yannick@meudal.net">Yannick Meudal</a>
 * @author <a href="mailto:arnt@gulbrandsen.priv.no">Arnt Gulbrandsen</a>
 */

public class ResolverConfig {

	/** The servers. */
	private String[] servers = null;

	/** The searchlist. */
	private Name[] searchlist = null;

	/** The current config. */
	private static ResolverConfig currentConfig;

	static {
		refresh();
	}

	/**
	 * Instantiates a new resolver config.
	 */
	public ResolverConfig() {
		if (findProperty())
			return;
		if (findSunJVM())
			return;
		if (servers == null || searchlist == null) {
			String OS = System.getProperty("os.name");
			String vendor = System.getProperty("java.vendor");
			if (OS.indexOf("Windows") != -1) {
				if (OS.indexOf("95") != -1 || OS.indexOf("98") != -1
						|| OS.indexOf("ME") != -1)
					find95();
				else
					findNT();
			} else if (OS.indexOf("NetWare") != -1) {
				findNetware();
			} else if (vendor.indexOf("Android") != -1) {
				findAndroid();
			} else {
				findUnix();
			}
		}
	}

	/**
	 * Adds the server.
	 * 
	 * @param server
	 *            the server
	 * @param list
	 *            the list
	 */
	private void addServer(String server, List list) {
		if (list.contains(server))
			return;
		if (Options.check("verbose"))
			System.out.println("adding server " + server);
		list.add(server);
	}

	/**
	 * Adds the search.
	 * 
	 * @param search
	 *            the search
	 * @param list
	 *            the list
	 */
	private void addSearch(String search, List list) {
		Name name;
		if (Options.check("verbose"))
			System.out.println("adding search " + search);
		try {
			name = Name.fromString(search, Name.root);
		} catch (TextParseException e) {
			return;
		}
		if (list.contains(name))
			return;
		list.add(name);
	}

	/**
	 * Configure from lists.
	 * 
	 * @param lserver
	 *            the lserver
	 * @param lsearch
	 *            the lsearch
	 */
	private void configureFromLists(List lserver, List lsearch) {
		if (servers == null && lserver.size() > 0)
			servers = (String[]) lserver.toArray(new String[0]);
		if (searchlist == null && lsearch.size() > 0)
			searchlist = (Name[]) lsearch.toArray(new Name[0]);
	}

	/**
	 * Looks in the system properties to find servers and a search path. Servers
	 * are defined by dns.server=server1,server2... The search path is defined
	 * by dns.search=domain1,domain2...
	 * 
	 * @return true, if successful
	 */
	private boolean findProperty() {
		String prop;
		List lserver = new ArrayList(0);
		List lsearch = new ArrayList(0);
		StringTokenizer st;

		prop = System.getProperty("dns.server");
		if (prop != null) {
			st = new StringTokenizer(prop, ",");
			while (st.hasMoreTokens())
				addServer(st.nextToken(), lserver);
		}

		prop = System.getProperty("dns.search");
		if (prop != null) {
			st = new StringTokenizer(prop, ",");
			while (st.hasMoreTokens())
				addSearch(st.nextToken(), lsearch);
		}
		configureFromLists(lserver, lsearch);
		return (servers != null && searchlist != null);
	}

	/**
	 * Uses the undocumented Sun DNS implementation to determine the
	 * configuration. This doesn't work or even compile with all JVMs (gcj, for
	 * example).
	 * 
	 * @return true, if successful
	 */
	private boolean findSunJVM() {
		List lserver = new ArrayList(0);
		List lserver_tmp;
		List lsearch = new ArrayList(0);
		List lsearch_tmp;

		try {
			Class[] noClasses = new Class[0];
			Object[] noObjects = new Object[0];
			String resConfName = "sun.net.dns.ResolverConfiguration";
			Class resConfClass = Class.forName(resConfName);
			Object resConf;

			// ResolverConfiguration resConf = ResolverConfiguration.open();
			Method open = resConfClass.getDeclaredMethod("open", noClasses);
			resConf = open.invoke(null, noObjects);

			// lserver_tmp = resConf.nameservers();
			Method nameservers = resConfClass.getMethod("nameservers",
					noClasses);
			lserver_tmp = (List) nameservers.invoke(resConf, noObjects);

			// lsearch_tmp = resConf.searchlist();
			Method searchlist = resConfClass.getMethod("searchlist", noClasses);
			lsearch_tmp = (List) searchlist.invoke(resConf, noObjects);
		} catch (Exception e) {
			return false;
		}

		if (lserver_tmp.size() == 0)
			return false;

		if (lserver_tmp.size() > 0) {
			Iterator it = lserver_tmp.iterator();
			while (it.hasNext())
				addServer((String) it.next(), lserver);
		}

		if (lsearch_tmp.size() > 0) {
			Iterator it = lsearch_tmp.iterator();
			while (it.hasNext())
				addSearch((String) it.next(), lsearch);
		}
		configureFromLists(lserver, lsearch);
		return true;
	}

	/**
	 * Looks in /etc/resolv.conf to find servers and a search path. "nameserver"
	 * lines specify servers. "domain" and "search" lines define the search
	 * path.
	 * 
	 * @param file
	 *            the file
	 */
	private void findResolvConf(String file) {
		InputStream in = null;
		try {
			in = new FileInputStream(file);
		} catch (FileNotFoundException e) {
			return;
		}
		InputStreamReader isr = new InputStreamReader(in);
		BufferedReader br = new BufferedReader(isr);
		List lserver = new ArrayList(0);
		List lsearch = new ArrayList(0);
		try {
			String line;
			while ((line = br.readLine()) != null) {
				if (line.startsWith("nameserver")) {
					StringTokenizer st = new StringTokenizer(line);
					st.nextToken(); /* skip nameserver */
					addServer(st.nextToken(), lserver);
				} else if (line.startsWith("domain")) {
					StringTokenizer st = new StringTokenizer(line);
					st.nextToken(); /* skip domain */
					if (!st.hasMoreTokens())
						continue;
					if (lsearch.isEmpty())
						addSearch(st.nextToken(), lsearch);
				} else if (line.startsWith("search")) {
					if (!lsearch.isEmpty())
						lsearch.clear();
					StringTokenizer st = new StringTokenizer(line);
					st.nextToken(); /* skip search */
					while (st.hasMoreTokens())
						addSearch(st.nextToken(), lsearch);
				}
			}
			br.close();
		} catch (IOException e) {
		}

		configureFromLists(lserver, lsearch);
	}

	/**
	 * Find unix.
	 */
	private void findUnix() {
		findResolvConf("/etc/resolv.conf");
	}

	/**
	 * Find netware.
	 */
	private void findNetware() {
		findResolvConf("sys:/etc/resolv.cfg");
	}

	/**
	 * Parses the output of winipcfg or ipconfig.
	 * 
	 * @param in
	 *            the in
	 */
	private void findWin(InputStream in) {
		String packageName = ResolverConfig.class.getPackage().getName();
		String resPackageName = packageName + ".windows.DNSServer";
		ResourceBundle res = ResourceBundle.getBundle(resPackageName);

		String host_name = res.getString("host_name");
		String primary_dns_suffix = res.getString("primary_dns_suffix");
		String dns_suffix = res.getString("dns_suffix");
		String dns_servers = res.getString("dns_servers");

		BufferedReader br = new BufferedReader(new InputStreamReader(in));
		try {
			List lserver = new ArrayList();
			List lsearch = new ArrayList();
			String line = null;
			boolean readingServers = false;
			boolean readingSearches = false;
			while ((line = br.readLine()) != null) {
				StringTokenizer st = new StringTokenizer(line);
				if (!st.hasMoreTokens()) {
					readingServers = false;
					readingSearches = false;
					continue;
				}
				String s = st.nextToken();
				if (line.indexOf(":") != -1) {
					readingServers = false;
					readingSearches = false;
				}

				if (line.indexOf(host_name) != -1) {
					while (st.hasMoreTokens())
						s = st.nextToken();
					Name name;
					try {
						name = Name.fromString(s, null);
					} catch (TextParseException e) {
						continue;
					}
					if (name.labels() == 1)
						continue;
					addSearch(s, lsearch);
				} else if (line.indexOf(primary_dns_suffix) != -1) {
					while (st.hasMoreTokens())
						s = st.nextToken();
					if (s.equals(":"))
						continue;
					addSearch(s, lsearch);
					readingSearches = true;
				} else if (readingSearches || line.indexOf(dns_suffix) != -1) {
					while (st.hasMoreTokens())
						s = st.nextToken();
					if (s.equals(":"))
						continue;
					addSearch(s, lsearch);
					readingSearches = true;
				} else if (readingServers || line.indexOf(dns_servers) != -1) {
					while (st.hasMoreTokens())
						s = st.nextToken();
					if (s.equals(":"))
						continue;
					addServer(s, lserver);
					readingServers = true;
				}
			}

			configureFromLists(lserver, lsearch);
		} catch (IOException e) {
		} finally {
			try {
				br.close();
			} catch (IOException e) {
			}
		}
		return;
	}

	/**
	 * Calls winipcfg and parses the result to find servers and a search path.
	 */
	private void find95() {
		String s = "winipcfg.out";
		try {
			Process p;
			p = Runtime.getRuntime().exec("winipcfg /all /batch " + s);
			p.waitFor();
			File f = new File(s);
			findWin(new FileInputStream(f));
			new File(s).delete();
		} catch (Exception e) {
			return;
		}
	}

	/**
	 * Calls ipconfig and parses the result to find servers and a search path.
	 */
	private void findNT() {
		try {
			Process p;
			p = Runtime.getRuntime().exec("ipconfig /all");
			findWin(p.getInputStream());
			p.destroy();
		} catch (Exception e) {
			return;
		}
	}

	/**
	 * Parses the output of getprop, which is the only way to get DNS info on
	 * Android. getprop might disappear in future releases, so this code comes
	 * with a use-by date.
	 */
	private void findAndroid() {
		String re1 = "^\\d+(\\.\\d+){3}$";
		String re2 = "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$";
		try {
			ArrayList maybe = new ArrayList();
			String line;
			Process p = Runtime.getRuntime().exec("getprop");
			InputStream in = p.getInputStream();
			InputStreamReader isr = new InputStreamReader(in);
			BufferedReader br = new BufferedReader(isr);
			while ((line = br.readLine()) != null) {
				StringTokenizer t = new StringTokenizer(line, ":");
				String name = t.nextToken();
				if (name.indexOf(".dns") > -1) {
					String v = t.nextToken();
					v = v.replaceAll("[ \\[\\]]", "");
					if ((v.matches(re1) || v.matches(re2))
							&& !maybe.contains(v))
						maybe.add(v);
				}
			}
			configureFromLists(maybe, null);
		} catch (Exception e) {
			// ignore resolutely
		}
	}

	/**
	 * Returns all located servers.
	 * 
	 * @return the string[]
	 */
	public String[] servers() {
		return servers;
	}

	/**
	 * Returns the first located server.
	 * 
	 * @return the string
	 */
	public String server() {
		if (servers == null)
			return null;
		return servers[0];
	}

	/**
	 * Returns all entries in the located search path.
	 * 
	 * @return the name[]
	 */
	public Name[] searchPath() {
		return searchlist;
	}

	/**
	 * Gets the current configuration.
	 * 
	 * @return the current config
	 */
	public static synchronized ResolverConfig getCurrentConfig() {
		return currentConfig;
	}

	/**
	 * Gets the current configuration.
	 */
	public static void refresh() {
		ResolverConfig newConfig = new ResolverConfig();
		synchronized (ResolverConfig.class) {
			currentConfig = newConfig;
		}
	}

}

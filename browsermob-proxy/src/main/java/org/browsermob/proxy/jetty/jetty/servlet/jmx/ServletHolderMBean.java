// ========================================================================
// $Id: ServletHolderMBean.java,v 1.7 2005/04/07 09:15:30 gregwilkins Exp $
// Copyright 200-2004 Mort Bay Consulting Pty. Ltd.
// ------------------------------------------------------------------------
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at 
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ========================================================================

package org.browsermob.proxy.jetty.jetty.servlet.jmx;

import org.browsermob.proxy.jetty.jetty.servlet.ServletHandler;
import org.browsermob.proxy.jetty.jetty.servlet.ServletHolder;

import javax.management.MBeanException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class ServletHolderMBean.
 * 
 * @version $Revision: 1.7 $
 * @author Greg Wilkins (gregw)
 */
public class ServletHolderMBean extends HolderMBean {
	/* ------------------------------------------------------------ */
	/** The _holder. */
	private ServletHolder _holder;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @throws MBeanException
	 *             the m bean exception
	 */
	public ServletHolderMBean() throws MBeanException {
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.jetty.servlet.jmx.HolderMBean#
	 * defineManagedResource()
	 */
	protected void defineManagedResource() {
		super.defineManagedResource();
		defineAttribute("initOrder");
		defineAttribute("paths", READ_ONLY, ON_MBEAN);

		_holder = (ServletHolder) getManagedResource();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the paths.
	 * 
	 * @return the paths
	 */
	public String[] getPaths() {
		ServletHandler handler = (ServletHandler) _holder.getHttpHandler();
		Map servletMap = handler.getServletMap();
		ArrayList paths = new ArrayList(servletMap.size());
		Iterator iter = servletMap.entrySet().iterator();
		while (iter.hasNext()) {
			Map.Entry entry = (Map.Entry) iter.next();
			if (entry.getValue() == _holder)
				paths.add(entry.getKey());
		}
		return (String[]) paths.toArray(new String[paths.size()]);
	}

}

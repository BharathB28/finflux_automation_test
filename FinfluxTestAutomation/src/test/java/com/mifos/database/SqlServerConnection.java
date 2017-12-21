package com.mifos.database;

import  java.sql.Connection;		
import  java.sql.Statement;		
import  java.sql.ResultSet;		
import  java.sql.DriverManager;		
import  java.sql.SQLException;	


public class  SqlServerConnection {	
	
	public static Connection con;
	
	public static String dbUrl = "jdbc:mysql://localhost:3306/finflux_caritas";					
	
	public static String username = "root";	
    
	public static String password = "mysql";				

	
    	public static void  connectSqlServer() throws  ClassNotFoundException, SQLException {													
						
                
           	    Class.forName("com.mysql.jdbc.Driver");			
           
           		//Create Connection to DB		
            	con = DriverManager.getConnection(dbUrl,username,password);
          	
		}
    	
    	public static void  executeQuries(String query) throws  ClassNotFoundException, SQLException {													
			    
    		connectSqlServer();
    		
    		Statement stmt = con.createStatement();					
    	       	
     		boolean rs= stmt.execute(query);
     		System.out.println(rs);
     		con.close();
      		
	}
}
package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnect {
	
	//create DB connection
	private static String url = "jdbc:mysql://localhost:3306/eventplanning";
	private static String user = "root";
	private static String password = "MySql";
	private static Connection con;
	

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
		}
		catch (Exception e) {
			System.out.println("Database connection is Failed!");
		}
		
		return con;
	}
}

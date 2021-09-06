package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hallDetails.dbConnect;

public class adminDBUtil {
	
	private static Connection con = null;
	private static Statement stm = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	
	public static Boolean validate(String userName, String Password) {
    	
    	try {
    		
    		con = dbConnect.getConnection();
    		stm = con.createStatement();
    		
    		String sql = "select * from admin where username='"+userName+"' and password='"+Password+"'";
    		rs = stm.executeQuery(sql);
    		
    		if (rs.next()) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
	
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	
    	return isSuccess;
 	}
	
	public static List<Admin> getAdminDetails(String userName){
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		try {
			
			con = dbConnect.getConnection();
    		stm = con.createStatement();
    		
    		//retrieve admin details
    		String sql = "select * from admin where username='"+userName+"'";
    		rs = stm.executeQuery(sql);
    		
    		while (rs.next()) {
    			
    			int ID = rs.getInt(1);
				String Name = rs.getString(2);
				String Address = rs.getString(3);
				String Phone = rs.getString(4);
				String Username = rs.getString(5);
				String Password = rs.getString(6);
    			
				Admin adm = new Admin(ID, Name, Address, Phone, Username, Password);
				admin.add(adm);
    		}
    		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return admin;	
	}
	
}

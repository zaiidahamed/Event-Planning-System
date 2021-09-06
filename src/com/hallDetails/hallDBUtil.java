package com.hallDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class hallDBUtil{
	
	private static Connection con = null;
	private static Statement stm = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;

	public static List<hall> getHallDetails() {
	    	
	    	ArrayList<hall> hNames = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = dbConnect.getConnection();
	    		stm = con.createStatement();
	    		
	    		String sql = "select * from hall ORDER BY hallID DESC";
	    		rs = stm.executeQuery(sql);
	    		
	    		while(rs.next()) {
					String hallID = rs.getString(1);
					String name = rs.getString(2);
					String des = rs.getString(3);
					int price = rs.getInt(4);
			
					hall h = new hall(hallID, name, des, price);
					hNames.add(h);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	
	    	return hNames;	
	 	}	
	
	//Insert new hall details to DB
	public static void insertHall(String id, String name, String des, Double price) {
		
	    	try {
	    		con = dbConnect.getConnection();
	    		stm = con.createStatement();
	    		
	    		//sql statement for insert
	    	    String sql = "insert into hall values ('"+id+"','"+name+"','"+des+"','"+price+"')";
	    		stm.executeUpdate(sql);	
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    }
	
	//Update excisting hall details 
	public static boolean updatetHall(String id, String name, String des, String price) {
		    	
		    try {
		   		con = dbConnect.getConnection();
		   		stm = con.createStatement();
		   		
		   		//sql statement for update data
	    	    String sql = "update hall set hallID='"+id+"', name='"+name+"', description='"+des+"', price='"+price+"'"
	    	    		+ "where hallID='"+id+"'";
		    	    
		    	int rs = stm.executeUpdate(sql);	  
		    	
		    	if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
		    		
		    }
		    catch (Exception e) {
		    	e.printStackTrace();
		    }
		    
		    return isSuccess;
	}
	
	//Delete hall details 
	public static boolean deleteHall(String id) {
    	
	    try {
	   		con = dbConnect.getConnection();
	   		stm = con.createStatement();
	   		
	   		//sql statement for update data
    	    String sql = "delete from hall where hallID='"+id+"'";
	    	    
	    	int rs = stm.executeUpdate(sql);	  
	    	
	    	if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
	    		
	    }
	    catch (Exception e) {
	    	e.printStackTrace();
	    }
	    
	    return isSuccess;
	}
	
		
}

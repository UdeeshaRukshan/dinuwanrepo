package com.customer;

import java.util.ArrayList;

import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class customerDButil {
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stat=null;
	private static ResultSet rs=null;

	public static List<customer> validate(String username,String password){
		
		ArrayList<customer> cus=new ArrayList<>();
		
		//validate
		
		try {
			
			con=DBConnect.getConnection();	
			stat=con.createStatement();
			
			
			String sql="select * from customer1 where username='"+username+"'and password='"+password+"'";
			
			 rs=stat.executeQuery(sql);
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU=rs.getString(5);
				String passU=rs.getString(6);
				
				customer c=new customer(id,name,email,phone,userU,passU);
				cus.add(c);
		
			}
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		return cus;
		
	}
	public static boolean insertcustomer(String name,String email,String phone,String username,String password) {
		boolean isSuccess=false;
		
		try {
			
			con=DBConnect.getConnection();	
			stat=con.createStatement();
			
			String sql="insert into customer1 values(0,'"+name+"','"+email+"','"+phone+"','"+username+"',aes_encrypt('"+password+"'))";
			
			int rs=stat.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}

		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	public static boolean updatecustomer(String id,String name,String email,String phone,String username,String password) {

		
		try {
	con=DBConnect.getConnection();	
	stat=con.createStatement();
	
	String sql="update customer1 set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'where id='"+id+"'";
	int rs=stat.executeUpdate(sql);
	
	if(rs>0) {
		isSuccess=true;
	}
	else {
		isSuccess=false;
	}
	
	
	}
	catch(Exception e) {
			e.printStackTrace();
}

		return isSuccess;
}
	
	public static List<customer> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id.trim());
		
		ArrayList<customer> cus=new ArrayList<>();
		
		//validate
		
		try {
			
			con=DBConnect.getConnection();	
			stat=con.createStatement();
			
			String sql="select * from customer1 where id='"+convertedID+"'";
			rs=stat.executeQuery(sql);
					
			while(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU=rs.getString(5);
				String passU=rs.getString(6);
				
				customer c=new customer(id,name,email,phone,userU,passU);
				cus.add(c);
		
			}
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		return cus;
		
	}
	
public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "delete from customer1 where id='"+convId+"'";
    		int r = stat.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }


}


		


		

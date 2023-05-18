package com.Admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;






public class AdminDBUtil {
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stat=null;
	private static ResultSet rs=null;

	public static List<Admin> validate(String username,String password){
		
		ArrayList<Admin> ad=new ArrayList<>();
		
		//validate
		
		try {
			
			con=DBconnect.getConnection();	
			stat=con.createStatement();
			
			
			String sql="select * from Admin where username='"+username+"'and password='"+password+"'";
			
			 rs=stat.executeQuery(sql);
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU=rs.getString(5);
				String passU=rs.getString(6);
				
				Admin c=new Admin(id,name,email,phone,userU,passU);
				ad.add(c);
		
			}
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		return ad;
		
	}
	
	public static boolean insertAdmin(String name,String email,String phone,String username,String password) {
		
		boolean isSuccess=false;
		
		try {
			
			con=DBconnect.getConnection();	
			stat=con.createStatement();
			
			String sql="insert into Admin values(4,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"'";
			
			int rs=stat.executeUpdate(sql);
			
			System.out.println(rs);
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
	
public static List<Admin> getAdminDetails(String Id){
		
		int convertedID = Integer.parseInt(Id.trim());
		
		ArrayList<Admin> ad=new ArrayList<>();
		
		//validate
		
		try {
			
			con=DBconnect.getConnection();	
			stat=con.createStatement();
			
			String sql="select * from Admin where AdminId='"+convertedID+"'";
			rs=stat.executeQuery(sql);
					
			while(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU=rs.getString(5);
				String passU=rs.getString(6);
				
				Admin ads=new Admin(id,name,email,phone,userU,passU);
				ad.add(ads);
		
			}
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		return ad;
		
	}
	
	public static boolean updateAdmin(String id,String name,String email,String phone,String username,String password) {

		
		try {
	con=DBconnect.getConnection();	
	stat=con.createStatement();
	
	String sql="update Admin set AdminName='"+name+"',Email='"+email+"',Phone='"+phone+"',Username='"+username+"',Password='"+password+"'where AdminId='"+id+"'";
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
	
	
public static boolean deleteAdmin(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stat = con.createStatement();
    		String sql = "delete from Admin where AdminId='"+convId+"'";
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



package com.lms003;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	public static boolean validate(String name, String pass) {
		boolean status = false;

		try{  
			Class.forName("org.postgresql.Driver");  
			java.sql.Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/db00a","postgres","nagma");
			PreparedStatement ps=con.prepareStatement("select * from credentials where username=? and password=?");
			
			ps.setString(1,name);  
			ps.setString(2,pass);  
			      
			ResultSet rs=ps.executeQuery();  
			status=rs.next();  
			          
			}catch(Exception e){System.out.println(e);}  

		return status;
	}
}

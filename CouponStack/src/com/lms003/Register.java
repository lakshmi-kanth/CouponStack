package com.lms003;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		System.out.print(firstname+lastname+email+password);
		
		try {
			Class.forName("org.postgresql.Driver");  
			java.sql.Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/db00a","postgres","nagma");
			PreparedStatement ps=con.prepareStatement("insert into udata values(?,?,?,?)");
			
			ps.setString(1,firstname);  
			ps.setString(2,lastname);
			ps.setString(3,email);
			ps.setString(4,password);
			
			int i = ps.executeUpdate();
			
			if(i!=0)
				System.out.print("Updated");
			
			
		}catch(Exception e) {
			System.out.print(e);
		}
	}
	
	

}

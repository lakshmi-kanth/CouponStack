package com.lms003;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddCoupon")
public class AddCoupon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String a = request.getParameter("comp");
		String b = request.getParameter("coup");
		int c = Integer.parseInt(request.getParameter("disc"));
		String d = request.getParameter("disc-type");
		String e = request.getParameter("from");
		String f = request.getParameter("to");
		String g = request.getParameter("coup-type");
		
		try{
			Class.forName("org.postgresql.Driver");
			java.sql.Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/carnet","postgres","nagma");
			PreparedStatement ps = con.prepareStatement("insert into coupon values('c0001',?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setInt(3, c);
			ps.setString(4, d);
			ps.setString(5, g);
			ps.setString(6, e);
			ps.setString(7, f);
			
			int i = ps.executeUpdate();
			if(i!=0){
				out.print("Updated");
			}
			
		}catch(Exception exc){
			out.print(exc);
		}
		
	}

	

	


}

package com.lms003;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		if(LoginDao.validate(username, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("user",username);
			response.sendRedirect("courses.jsp");
		}else
			response.sendRedirect("login.jsp");
	}
	

}

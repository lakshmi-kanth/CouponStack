package com.lms003;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/Query")
public class Query extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String company = request.getParameter("comp");
		try {
			java.sql.Connection connection = DbConnect.intialiseDb("carnet");
			PreparedStatement ps = connection.prepareStatement("select cpn_val,disc_type,disc_meas,payvia,min_odr_val,freq_mon from cpnresrv where payto=?");
			ps.setString(1, company);
			ResultSet rs = ps.executeQuery();
			ArrayList<CpnItm> alci = new ArrayList<CpnItm>();
			while(rs.next()) {
				alci.add(new CpnItm(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6)));
			}
			request.setAttribute("couponlist", alci);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/listed.jsp");
			rd.forward(request, response);
		}catch(Exception e){
			out.print(e);
		}
	}

}

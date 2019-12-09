package com.lms003;

import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Srch")
public class Srch extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String sterm = request.getParameter("query");
			
			Class.forName("org.postgresql.Driver");
			java.sql.Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/carnet","postgres","nagma");
			PreparedStatement ps = con.prepareStatement("select coupon_id, company_id, coupon_code, discount, discount_type, coupon_type, validity_from, validity_to from coupon where company_id=?");
			ps.setString(1,sterm);
			ResultSet rs = ps.executeQuery();
			PrintWriter out = response.getWriter();
			ArrayList<CouponItem> ci = new ArrayList<CouponItem>();
			
			while(rs.next()){
				ci.add(new CouponItem(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)));
			}
			
			request.setAttribute("couponlist", ci);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/coupons.jsp");
			rd.forward(request, response);
			
			ListIterator<CouponItem> li = ci.listIterator();
			while(li.hasNext()) {
				CouponItem obj = li.next();
				out.println(obj.couponId);
				out.println(obj.companyId);
				out.println(obj.couponCode);
				out.println(obj.discount);
				out.println(obj.discount_type);
				out.println(obj.coupon_type);
				out.println(obj.validity_from);
				out.println(obj.validity_to);
			}
			
		}catch(Exception e){
			PrintWriter out = response.getWriter();
			out.println(e);
		}
	}

}



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lms003.CpnItm;
import com.lms003.DbConnect;

@WebServlet("/ReadCoupon")
public class ReadCoupon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String a = request.getParameter("payto");
		String b = request.getParameter("payvia");
		String c = request.getParameter("co-code");
		int d = Integer.parseInt(request.getParameter("co-val"));
		int e = Integer.parseInt(request.getParameter("disc"));
		int o = Integer.parseInt(request.getParameter("moa"));
		String f = request.getParameter("disc-type");
		String g = request.getParameter("disc-desc");
		String h = request.getParameter("validity");
		String i = request.getParameter("validity-date");
		String j = request.getParameter("day-freq");
		String k = request.getParameter("mon-freq");
		Boolean l = Boolean.parseBoolean(request.getParameter("sel-customers"));
		Boolean m = Boolean.parseBoolean(request.getParameter("sel-restaurants"));
		Boolean n = Boolean.parseBoolean(request.getParameter("sel-cities"));
		
		try {
			java.sql.Connection connection = DbConnect.intialiseDb("carnet");
			PreparedStatement ps = connection.prepareStatement("insert into cpnresrv values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setInt(2, e);
			ps.setString(3, f);
			ps.setString(4, g);
			ps.setString(5, c);
			ps.setInt(6, d);
			ps.setString(7, h);
			ps.setString(8, i);
			ps.setInt(9, o);
			ps.setString(10, j);
			ps.setString(11, k);
			ps.setString(12, b);
			ps.setBoolean(13, l);
			ps.setBoolean(14, m);
			ps.setBoolean(15, n);
			int ii = ps.executeUpdate();
			if(ii!=0){
				out.print("Updated");
			}
		}catch(Exception ee){
			out.print(ee);
		}
		
	}

}

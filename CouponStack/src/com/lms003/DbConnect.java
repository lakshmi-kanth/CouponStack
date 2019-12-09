package com.lms003;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
	public static Connection intialiseDb(String db) throws SQLException, ClassNotFoundException {
		Class.forName("org.postgresql.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/"+db,"postgres","nagma");
		return con;
	}
}

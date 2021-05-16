package com.library;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class verifyLogin2 {

public static boolean checkLogin(String username,String password){
	boolean status=false;
	Connection con=GetCon.getCon();
	try {
		
		  String sql = "SELECT * FROM LIBRARYADMIN Where username = \'" +
		  username+"\' AND password=\'" + password+"\'"; Statement stmt =
		  con.createStatement(); ResultSet rs = stmt.executeQuery(sql);
		 
		
		/*
		 * PreparedStatement ps=con.
		 * prepareStatement("Select * from LIBRARYADMIN where username = ? and password = ?"
		 * ); ps.setString(1,username); ps.setString(2,password); ResultSet
		 * rs=ps.executeQuery();
		 */
		 
		status=rs.next();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}
}

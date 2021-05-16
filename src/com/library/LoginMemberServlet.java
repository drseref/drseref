package com.library;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/LoginMemberServlet")
public class LoginMemberServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		boolean status=false;
		Connection con=GetCon.getCon();
		
		try {
			// get request parameters for userID and password
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			final String secretKey = "ssshhhhhhhhhhh!!!!";
			String encryptedPassword = Encryption.encrypt(password, secretKey) ;
			
			if(username.equals("staff1")) {
				String sql = "SELECT * FROM NEWSTAFFMEMBER Where username = \'" +
						  username+"\' AND password=\'" + password+"\'"; 
				 Statement stmt = con.createStatement(); 
				 ResultSet rs = stmt.executeQuery(sql);
				 status=rs.next();
				 if(status==true) {
					 Cookie loginCookie = new Cookie("user",username);
						//setting cookie to expiry in 2 mins
						loginCookie.setMaxAge(2*60);
						response.addCookie(loginCookie);
						response.sendRedirect("stafflogin.jsp");
				 }
			} else if(username.equals("user2")) {
				String sql = "SELECT * FROM NEWMEMBER Where username = \'" +
						  username+"\' AND password=\'" + encryptedPassword+"\'"; 
				 Statement stmt = con.createStatement(); 
				 ResultSet rs = stmt.executeQuery(sql);
				 status=rs.next();
				 if(status==true) {
					 Cookie loginCookie = new Cookie("user",username);
						//setting cookie to expiry in 1 mins
						loginCookie.setMaxAge(1*60);
						response.addCookie(loginCookie);
						response.sendRedirect("memberlogin.jsp");
				 }
			}
			
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		
	}
	

}

package com.icbt.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminServlet
 */
@WebServlet("/adminServlet")
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	 
	    	try {

	        	response.setContentType("text/html");
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/icbt ","root","root");
				
		        String username = request.getParameter("uname");
		        String password = request.getParameter("upassword");
		        
		        PreparedStatement ps = con.prepareStatement("select uname from adminlogin where uname = ? and upassword = ?");
		        ps.setString(1,username);
		        ps.setString(2, password);
		        ResultSet rs = ps.executeQuery();
		        
		        if(rs.next())
		        {
		        	RequestDispatcher rd = request.getRequestDispatcher("adminpanel.jsp");
		        	rd.forward(request, response);
		        }
		        else
		        {
		        	response.sendRedirect("loginadmin.jsp?error");
		        }
		        
		        
			} catch (ClassNotFoundException e) {
		
				e.printStackTrace();
			} catch (SQLException e) {
			
				e.printStackTrace();
			};
		}
	}
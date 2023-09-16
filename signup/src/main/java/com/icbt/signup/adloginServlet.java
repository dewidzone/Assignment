package com.icbt.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adloginServlet
 */
@WebServlet("/adloginServlet")
public class adloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adloginServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        Connection conn = null;
	        PreparedStatement stmt = null;
	        ResultSet rs = null;

	        try {
	            // Load the MySQL JDBC driver
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            
	            // Establish a database connection
	            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/icbt", "root","root");
	            
	            // Prepare the SQL query
	            String sql = "SELECT * FROM login_admin WHERE username = ? AND password = ?";
	            stmt = conn.prepareStatement(sql);
	            stmt.setString(1, username);
	            stmt.setString(2, password);
	            
	            // Execute the query
	            rs = stmt.executeQuery();

	            if (rs.next()) {
	                // Successful login
	                // You can retrieve user details from the ResultSet if needed.
	                HttpSession session = request.getSession();
	                session.setAttribute("username", username);

	                // Redirect to the admin dashboard or another page
	                response.sendRedirect("admin_dashboard.jsp");
	            } else {
	                // Failed login, display an error message
	                response.sendRedirect("NewFile.jsp?error=1");
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            // Handle database connection or SQL errors here
	        } finally {
	            // Close the database resources
	            try {
	                if (rs != null) rs.close();
	                if (stmt != null) stmt.close();
	                if (conn != null) conn.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	}
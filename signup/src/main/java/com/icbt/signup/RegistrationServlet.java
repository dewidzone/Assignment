package com.icbt.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
	       String email = request.getParameter("email");
	       String password = request.getParameter("password");
	       String contact = request.getParameter("contact");
	       
	       RequestDispatcher dispatcher = null;
	       Connection con = null;
	        
	        try{
	            Class.forName("com.mysql.jdbc.Driver"); 
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/icbt", "root","root");
	            PreparedStatement pst = con
	                    .prepareStatement("insert into users(username, password, email, contact_no) values(?,?,?,?) ");
	            pst.setString(1, name);
	            pst.setString(2, password);
	            pst.setString(3, email);
	            pst.setString(4, contact);
	            
	            int rowCount = pst.executeUpdate();
	            dispatcher = request.getRequestDispatcher("registration.jsp");
	            if (rowCount > 0) {
	                request.setAttribute("status", "success");
	            } else{
	             request.setAttribute("status", "failed");  
	            }         
	          dispatcher.forward(request, response);
	        }catch (IOException | ClassNotFoundException | SQLException | ServletException e){
	        System.out.print(e);
	    } finally {
	           try {
	               con.close();
	           } catch (SQLException e) {
	               System.out.print(e);
	           }
	                }
	    }
	}

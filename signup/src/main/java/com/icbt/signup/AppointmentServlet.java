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
 * Servlet implementation class AppointmentServlet
 */
@WebServlet("/appointment")
public class AppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		   String type_of_job = request.getParameter("type_of_job");
	       String desire_country = request.getParameter("desire_country");
	       String passport_no = request.getParameter("Passport_no");
	       String address = request.getParameter("address");
	       String contact_no = request.getParameter("contact_no");
	       String date = request.getParameter("date");
	       String time = request.getParameter("time");
	         
	       RequestDispatcher dispatcher = null;
	       Connection con = null;
	        
	        try{
	            Class.forName("com.mysql.jdbc.Driver"); 
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/icbt", "root","root");
	            PreparedStatement pst = con
	                    .prepareStatement("insert into appointment(type_of_job, desire_country, passport_no, address, contact_no, date, time) values(?,?,?,?,?,?,?) ");
	            pst.setString(1, type_of_job);
	            pst.setString(2, desire_country);
	            pst.setString(3, passport_no);
	            pst.setString(4, address);
	            pst.setString(5, contact_no);
	            pst.setString(6, date);
	            pst.setString(7, time);
	            
	            int rowCount = pst.executeUpdate();
	            dispatcher = request.getRequestDispatcher("index.jsp");
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
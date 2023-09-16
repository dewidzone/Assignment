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

@WebServlet("/ViewAppointmentServlet")
public class ViewAppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/icbt";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "root";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
       
        String id = request.getParameter("id");

 
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
               
                String selectQuery = "SELECT id, date, time, consultant FROM appointment WHERE id = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
                    preparedStatement.setString(1, id);
                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        if (resultSet.next()) {
                        
                            request.setAttribute("id", resultSet.getString("id"));
                            request.setAttribute("date", resultSet.getString("date"));
                            request.setAttribute("time", resultSet.getString("time"));
                            request.setAttribute("consultant", resultSet.getString("consultant"));
                            
                        
                            request.getRequestDispatcher("view_appointment.jsp").forward(request, response);
                        } else {
                            
                            response.sendRedirect("error.jsp");
                        }
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
          
            response.sendRedirect("error.jsp");
        }
    }
}

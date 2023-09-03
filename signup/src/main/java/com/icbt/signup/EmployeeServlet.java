package com.icbt.signup;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icbt.dao.EmployeeDAO;
import com.icbt.model.Employee;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	private EmployeeDAO employeeDAO;
	
   
    public EmployeeServlet() {
        super();
        this.employeeDAO = new EmployeeDAO();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertEmployee(request, response);
				break;
			case "/delete":
				deleteEmployee(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateEmployee(request, response);
				break;
			default:
				listEmployee(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	
	private void listEmployee(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Employee> listemployees = employeeDAO.selectAllEmployees();
		request.setAttribute("listemployees", listemployees);
		System.out.println(listemployees);
		RequestDispatcher dispatcher = request.getRequestDispatcher("employee_list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("employee_form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int empID = Integer.parseInt(request.getParameter("empId"));
		Employee existingemployees = employeeDAO.selectEmployee(empID);
		RequestDispatcher dispatcher = request.getRequestDispatcher("employee_form.jsp");
		request.setAttribute("employee", existingemployees);
		dispatcher.forward(request, response);

	}

	private void insertEmployee(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String name = request.getParameter("name");
		String type_of_employee = request.getParameter("type_of_employee");
		String specialized_country = request.getParameter("specialized_country");
		String specialized_type_of_job = request.getParameter("specialized_type_of_job");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		Employee newemployee = new Employee(name, type_of_employee, specialized_country, specialized_type_of_job, email, address);
		employeeDAO.insertEmployee(newemployee);
		response.sendRedirect("list");
	}

	private void updateEmployee(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int empID = Integer.parseInt(request.getParameter("empId"));
		String name = request.getParameter("name");
		String type_of_employee = request.getParameter("type_of_employee");
		String specialized_country = request.getParameter("specialized_country");
		String specialized_type_of_job = request.getParameter("specialized_type_of_job");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		Employee book = new Employee(empID,name, type_of_employee, specialized_country, specialized_type_of_job, email, address);
		employeeDAO.updateEmployee(book);
		response.sendRedirect("list");
	}

	private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int empID = Integer.parseInt(request.getParameter("empId"));
		employeeDAO.deleteEmployee(empID);
		response.sendRedirect("list");

	}

}


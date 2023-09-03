package com.icbt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.icbt.model.Employee;

//THIS DAO class provide CRUD operation for table of employee in the database

public class EmployeeDAO {

	private String jdbcURL = "jdbc:mysql://localhost:3306/icbt?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";
	
	
	private static final  String INSERT_EMPLOYEES_SQL = "INSERT INTO employees" + "(name, type_of_employee, specialized_country, specialized_type_of_job, email, address) VALUES" + "(?,?,?,?,?,?);"; 
	
	private static final  String SELECT_EMPLOYEES_BY_ID = "select empID, name, type_of_employee, specialized_country, specialized_type_of_job, email, address from employees where empID=?";
	private static final  String SELECT_ALL_EMPLOYEES = "select * from employees";
	private static final  String DELETE_EMPLOYEES_SQL = "delete from employees where empID = ?; "; 
	private static final  String UPDATE_EMPLOYEES_SQL = "update employees set name=?, type_of_employee=?, specialized_country=?, specialized_type_of_job=?, email=?, address=?; ";
	
	public EmployeeDAO() {
	}


	protected Connection getConnection() {
		Connection connection = null;
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		return connection;
	}
	
	//create employee
	public void insertEmployee(Employee employee) throws SQLException {
		System.out.println(INSERT_EMPLOYEES_SQL);
		
		try (Connection connection = getConnection();
				
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEES_SQL)) {
			preparedStatement.setString(1, employee.getName());
			preparedStatement.setString(2, employee.getType_of_employee());
			preparedStatement.setString(3, employee.getSpecialized_country());
			preparedStatement.setString(4, employee.getSpecialized_type_of_job());
			preparedStatement.setString(5, employee.getEmail());
			preparedStatement.setString(6, employee.getAddress());
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//select employee by empID
	public Employee selectEmployee(int empID) {
		Employee employee = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMPLOYEES_BY_ID);) {
			preparedStatement.setInt(1, empID);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String name = rs.getString("name");
				String type_of_employee = rs.getString("type_of_employee");
				String specialized_country = rs.getString("specialized_country");
				String specialized_type_of_job = rs.getString("specialized_type_of_job");
				String email = rs.getString("email");
				String address = rs.getString("address");
				employee = new Employee(empID, name, type_of_employee, specialized_country, specialized_type_of_job, email, address);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return employee;
	}
	
	
	//select all employees
	
		public List<Employee> selectAllEmployees() {

			// using try-with-resources to avoid closing resources (boiler plate code)
			List<Employee> employees = new ArrayList<>();
			// Step 1: Establishing a Connection
			try (Connection connection = getConnection();

					// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEES);) {
				System.out.println(preparedStatement);
				// Step 3: Execute the query or update query
				ResultSet rs = preparedStatement.executeQuery();

				// Step 4: Process the ResultSet object.
				while (rs.next()) {
					int empID = rs.getInt("empID");
					String name = rs.getString("name");
					String type_of_employee = rs.getString("type_of_employee");
					String specialized_country = rs.getString("specialized_country");
					String specialized_type_of_job = rs.getString("specialized_type_of_job");
					String email = rs.getString("email");
					String address = rs.getString("address");
					employees.add(new Employee(empID, name, type_of_employee, specialized_country, specialized_type_of_job, email, address));
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return employees;
		}
	
	
		
		
	//update employee
	
	public boolean updateEmployee(Employee employee) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_EMPLOYEES_SQL);) {
			System.out.println("updated Employee:"+statement);
			statement.setString(1, employee.getName());
			statement.setString(2, employee.getType_of_employee());
			statement.setString(3, employee.getSpecialized_country());
			statement.setString(4, employee.getSpecialized_type_of_job());
			statement.setString(5, employee.getEmail());
			statement.setString(6, employee.getAddress());
			statement.setInt(7, employee.getEmpId());

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
	
	//delete employee
	public boolean deleteEmployee(int empID) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_EMPLOYEES_SQL);) {
			statement.setInt(1, empID);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}
	
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
	
	
}

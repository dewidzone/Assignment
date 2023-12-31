<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Employees</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Employees</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New employee</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>EMP ID</th>
						<th>Name</th>
						<th>TYPE OF EMPLOYEE</th>
						<th>SPECIALIZED COUNTRY</th>
						<th>SPECIALIZED TYPE OF JOB</th>
						<th>Email</th>
						<th>Address</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					
					 
					<c:forEach var ="employee" items="${listemployees}">

						<tr>
							<td> ${employee.empId} </td>
							<td> ${employee.name} </td>
							<td> ${employee.type_of_employee} </td>
							<td> ${employee.specialized_country} </td>
							<td> ${employee.specialized_type_of_job} </td>
							<td>${employee.email} </td>
							<td> ${employee.address}</td>
							
							<td><a href="edit?empId=${employee.empId}">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?empId=${employee.empId}">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>

</body>
</html>
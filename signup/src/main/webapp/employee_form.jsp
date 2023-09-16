<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Employees</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${employee != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${employee == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${employee != null}">
            			Edit employee
            		</c:if>
						<c:if test="${employee == null}">
            			Add New employee
            		</c:if>
					</h2>
				</caption>

				<c:if test="${employee != null}">
					<input type="hidden" name="id" ${employee.empId} />
				</c:if>

				<fieldset class="form-group">
					<label>Employee Name</label> <input type="text"
						 ${employee.name} class="form-control"
						name="name" required>
				</fieldset>

				<fieldset class="form-group">
					<label>Employee Type</label> <input type="text"
						${employee.type_of_employee} class="form-control"
						name="type_of_employee" required>
				</fieldset>

				<fieldset class="form-group">
					<label>Employee Specialized Country</label> <input type="text"
						${employee.specialized_country} class="form-control"
						name="specialized_country" required>
				</fieldset>
				
					<fieldset class="form-group">
					<label>Specialized Type of Job</label> <input type="text"
						${employee.specialized_type_of_job} class="form-control"
						name="specialized_type_of_job" required>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Employee Email</label> <input type="text"
					${employee.email} class="form-control"
						name="email" required>
				</fieldset>

				
				<fieldset class="form-group">
					<label>Employee Address</label> <input type="text"
						${employee.address} class="form-control"
						name="address" required>
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
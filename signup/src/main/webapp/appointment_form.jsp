<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment form</title>
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
				<li><a href="/list1"
					class="nav-link">Appointments</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				
				<c:if test="${appointment == null}">
					<form actions="insert1" method="post">
				</c:if>

				<caption>
					<h2>

						<c:if test="${appointment == null}">
            			Add New Appointment
            		</c:if>
					</h2>
				</caption>

				<c:if test="${appointment != null}">
					<input type="hidden" name="id" ${appointment.appointmentID} />
				</c:if>


				<fieldset class="form-group">
					<label>Type of Job</label> <input type="text"
						${appointment.type_of_job} class="form-control"
						name="type_of_job">
				</fieldset>

				<fieldset class="form-group">
					<label>Desire Country</label> <input type="text"
						${appointment.desire_country} class="form-control"
						name="desire_country">
				</fieldset>
				
					<fieldset class="form-group">
					<label>Passport No:</label> <input type="text"
						${appointment.passport_no} class="form-control"
						name="passport_no">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Your Address</label> <input type="text"
					${appointment.address} class="form-control"
						name="address">
				</fieldset>

				
				<fieldset class="form-group">
					<label>Appointment Date</label> <input type="date"
						${appointment.date} class="form-control"
						name="date">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
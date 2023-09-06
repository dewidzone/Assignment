<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment List</title>
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
				<li><a href="/list1"
					class="nav-link"></a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Appointments</h3>
			<hr>
			<div class="container text-left">

				<a href="/new1" class="btn btn-success">Add
					New Appointment</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Appointment ID</th>
						<th>Type of Job</th>
						<th>Desire Country</th>
						<th>Passport No:</th>
						<th>Address</th>
						<th>Date</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					
					 
					<c:forEach var ="appointment" items="${Listappointments}">

						<tr>
							<td> ${appointment.appointmentId} </td>
							<td> ${appointment.type_of_job} </td>
							<td> ${appointment.desire_country} </td>
							<td> ${appointment.passport_no} </td>
							<td>${appointment.address} </td>
							<td> ${appointment.date}</td>
							
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?appointmentID=${appointment.appointmentID}">Cancel</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>

</body>
</html>
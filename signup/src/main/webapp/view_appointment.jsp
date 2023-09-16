<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Appointment</title>

    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>

    <h1>Appointment Details</h1> 
     
    <table class="table table-bordered">
				<thead>
					<tr>
						<th>Appointment ID</th>
						<th>Date</th>
						<th>Time</th>
						<th>Consultant</th>
					</tr>
				</thead>
				<tbody>
					
					 
				

						<tr>
							<td><%= request.getAttribute("id") %></td>
							<td><%= request.getAttribute("date") %></td>
							<td><%= request.getAttribute("time") %></td>
							<td><%= request.getAttribute("consultant") %></td>																				
						</tr>
					
					<!-- } -->
				</tbody>

			</table>   
    
     <a href="index.jsp">Back to Home</a>
</body>
</html>
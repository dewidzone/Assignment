<%
if(session.getAttribute("uname")==null){
response.sendRedirect("loginadmin.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    
}
.nav{
    display: top;

}

body {
    background-image: url('b3.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    font-family: Georgia;
    background-color: #f5f5f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;

}
        .navbar {
            width: 100%;
            color: #fff;
            position: fixed;
            padding: 10px;
            top: 0;
            left: 0;
        }
.home-container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
    padding: 30px;
    text-align: center;
        width: 900px;
        margin: 60px auto;
}

.center {
     text-align: center;
     margin-top: 20px; 
        }
        
    </style>

</head>

<body>

   	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">The Jobs </a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				 <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="employee_form.jsp">Add New Employee
						</a></li>

					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="adminlogout">Logout - <%= session.getAttribute("uname")%></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
   
	<header>
	<div class="home-container">
				<div class="center">
				<h1>More Info</h1><br><br>
				
				<p>The Jobs is a leading consultation center in Colombo that 
				provides free consultation services to job seekers who are planning to go abroad for jobs. 
				We have a team of experienced and qualified job consultants who are specialized on different 
				countries and the type of jobs on which the job seekers need advice.</p><br><br>
				
<p>Our consultants are working on a part-time basis, so you can easily schedule an appointment with them that fits your schedule. 
We also have a web-based system that allows you to schedule appointments online.
We understand that finding a job abroad can be a daunting task, but we are here to help you every step of the way. We will provide you with the guidance and support you need to find the right job for you.</p><br><br>

<p>Here are some of the services we offer:<br>

Career counseling<br>
Resume writing assistance<br>
Interviewing skills training<br>
Networking assistance<br>
Job placement<br><br>

We are committed to helping you achieve your career goals. We believe that everyone deserves to have a great job, and we are here to help you make that happen.

</p>

</div><br><br>
        
   </header>     


</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    
}

body {
    background-image: url('b9.jpg');
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

.about-container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
    padding: 20px;
    text-align: center;
        width: 1200px;
}

.center {
     text-align: center;
     margin-top: 20px; 
        }
        
    </style>



</head>
<body id="page-top">
<div class="navbar">
    <jsp:include page="navbar.jsp" />
    </div>
    
						
    <div class="about-container">
        <div class="center">
				<h1>About Us</h1><br><br>
				<h2 class="masthead-heading text-uppercase mb-0">Welcome To The Jobs Consultant Service</h2>
        </div>


    <form action="AboutServlet" method="post">

        </form>

     	<header>
	<div class="home-container">
				<div class="center">
				<br><br>
				
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
       	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	                  
</body>

</html>

	







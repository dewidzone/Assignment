
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>The Jobs Online Appointment Scheduling</title>

    <style>
        /* Define the styles for the navigation bar */
        .navbar {
            background-color: tomato;
            overflow: hidden;
        }

        /* Style the navigation bar links */
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Change color on hover */
        .navbar a:hover {
            background-color: darkred;
        }

        /* Style the container for the main content */
        .container {
            max-width: 800px; /* Adjust the max width as needed */
            margin: 0 auto; /* Center the container horizontally */
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
            text-align: center;
        }

        /* Style the main content paragraph */
        .container p {
            font-size: 16px;
            line-height: 1.5;
            margin-top: 20px;
        }
    </style>
</head>
<body id="page-top">

<div class="navbar">
    <a href="add_appointment.jsp">Appointment</a>
    <a href="aboutus.jsp">About</a>
    <a href="logout">Logout - <%= session.getAttribute("name")%></a>
</div>

<!-- Main content container -->
<div class="container">
  
  

    <p>Our consultants are working on a part-time basis, so you can easily schedule an appointment with them that fits your schedule. We also have a web-based system that allows you to schedule appointments online. We understand that finding a job abroad can be a daunting task, but we are here to help you every step of the way. We will provide you with the guidance and support you need to find the right job for you.</p>

    <p>Here are some of the services we offer:</p>
    <ul>
        <li>Career counseling</li>
        <li>Resume writing assistance</li>
        <li>Interviewing skills training</li>
        <li>Networking assistance</li>
        <li>Job placement</li>
    </ul>

    <p>We are committed to helping you achieve your career goals. We believe that everyone deserves to have a great job, and we are here to help you make that happen.</p>
</div>

<!-- Footer and scripts go here -->
<footer class="footer text-center">
    <!-- Footer content goes here -->
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
    // Your JavaScript code goes here
</script>

</body>
</html>








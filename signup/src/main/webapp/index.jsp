<%
if(session.getAttribute("name")==null){
response.sendRedirect("login.jsp");
}
%>






<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
	

<title>The Jobs Online Appointment Scheduling</title>


<link rel="stylesheet" href="css/apform.css">

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
 <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
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
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="About.jsp">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Contact.jsp">Contact</a></li>

					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout - <%= session.getAttribute("name")%></a></li>
					
				</ul>
			</div>
		</div>
	</nav>

	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
		
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To The Jobs Consultant Service</h1>
		
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<p class="masthead-subheading font-weight-light mb-0">It's not late to
				make your dreams come true</p>
		</div>
	</header>

	
	<!-- Appointment form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Appointment Form</h2>
					
						<form method="POST" action="appointment" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="type_of_job" id="type_of_job" required="" placeholder="type of job" />
							</div>
                                                    
                                                        <div class="form-group">
								<label for="desire_country"><i class="zmdi zmdi-email"></i></label> <input
									type="text" name="desire_country" id="desire_country" required="" placeholder="desire country" />
							</div>
                                                    
                                                        <div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="Passport_no" id="Passport_no" required="" placeholder="your Passport no" />
							</div>
                                    
                                    <div class="form-group">
								<label for="address"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="address" id="address" required=""
									placeholder="your address" />
							</div>
                                                    
                                                    	<div class="form-group">
								<label for="contact_no"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact_no" id="contact_no" maxlength="10" required=""
									placeholder="your contact no" />
							</div>                                    
							
							    <div class="form-group">
								<label for="date"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="date" name="date" id="date" required=""
									placeholder="select a date" />
							</div>
							
							               													
							<div class="form-group form-button">
								<input type="submit" name="submit" id="submit"
									class="form-submit" value="submit" />
							</div>
						</form>
					</div>
				
				</div>
			</div>
		</section>
	
	
	
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
			
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4"></h4>
					<p class="lead mb-0">
						
					</p>
				</div>
				
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4"></h4>
					<p class="lead mb-0">
						
						
					</p>
				</div>
			</div>
		</div>
	</footer>

	


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
            
            var status = document.getElementById("status").value;
            if(status==="success"){
                swal("Appointment created successfully", "success");   
            }
            </script>
	
</body>
</html>

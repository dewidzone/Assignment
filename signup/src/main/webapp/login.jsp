<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LOGIN</title>

    <style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    
}

body {
    background-image: url('b3.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;

}

.login-container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
    padding: 30px;
    text-align: center;
        width: 300px;
}

.login-form {
    display: flex;
    flex-direction: column;
}

h2 {
    margin-bottom: 20px;
    color: #333;
}

input[type="text"],
input[type="password"] {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button :hover {
    background-color: #0056b3;
}

.error-message {
    color: #ff3d3d;
}


.top-right-button {
    position: fixed; 
    top: 20px; 
    right: 20px; 
    padding: 10px 20px; 
    background-color: #007bff; 
    color: #fff; 
    border: 4px; 
    border-radius: 6px;
    cursor: pointer;
    z-index: 999; 
    
    
}

}

.login-container {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.7);
    padding: 40px;
    text-align: center;
        width: 350px;
}

    </style>

</head>

<body>
<div>

  <div class="login-container">
<div class="container">
       
    
       <form action="loginadmin.jsp"><button class="top-right-button">Admin Login</button> </form>
    </div><br>
     <div class="login-header">
            <h2>Login Panel </h2><br>
        </div>
     

   
        <form action="login" method="post" class="login-form">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
		    
							
            <button type="submit"><b>Login</b></button><br><br><br>
            
            <a href="registration.jsp" class="signup-image-link">Create an
							account</a>
              </form>
           
        </div>
               


              
 
        
 <!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

        <script type="text/javascript">
            
            var status = document.getElementById("status").value;
            if(status==="failed"){
                swal("Sorry", "Occured incorrect username or password", "failed");   
            }
            </script>     
            
            
            
                        
</body>
</html>






	
	
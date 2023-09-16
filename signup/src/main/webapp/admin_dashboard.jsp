




<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="dashboard_styles.css">
    <style>
    
    body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

.navbar {
    background-color: #6495ed;
    overflow: hidden;
}

.navbar ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

.navbar li {
    float: left;
}

.navbar a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.navbar a:hover {
    background-color: #555;
}

.dashboard-container {
    background-color: #ffffff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    border-radius: 5px;
    width: 80%;
    margin: 20px auto;
    padding: 20px;
}

h2 {
    color: #333;
    text-align: center;
}
    
    </style>
</head>
<body>
    <div class="navbar">
        <ul>
           
            <li><a href="employee_list">Employee</a></li>
            <li><a href="#">Event</a></li>
               
        </ul>
    </div>
    <div class="dashboard-container">
        <h1 align = "center">Welcome to the Admin Dashboard</h1>
        <!-- Your dashboard content goes here -->
    </div>
    
    
    
    <div class="dashboard-container">
   
    <div class="dashboard-content">
        <h2 align = "center">Employee Management Instructions</h2>
        
        <div class="instruction">
        <h3>Adding a New Employee</h3>
        <ol>
            <li>Access Employee Management</li>
            <li>Add New Employee
                <ol>
                    <li>Click "Add New Employee" or "Create Employee"</li>
                    <li>Fill in employee details...</li>
                </ol>
            </li>
            <li>Save Employee</li>
        </ol>
    </div>

    <div class="instruction">
        <h3>Updating Employee Information</h3>
        <ol>
            <li>Access Employee List</li>
            <li>Locate Employee
                <ol>
                    <li>Click "Edit" or "Update"...</li>
                    <li>Modify Information...</li>
                </ol>
            </li>
            <li>Save Changes</li>
        </ol>
    </div>

    <div class="instruction">
        <h3>Deleting an Employee</h3>
        <ol>
            <li>Access Employee List</li>
            <li>Locate Employee
                <ol>
                    <li>Click "Delete" or "Remove"...</li>
                    <li>Confirm Deletion...</li>
                </ol>
            </li>
            <li>Confirm Deletion</li>
        </ol>
    </div>

    <div class="best-practices">
        <h3>Best Practices and Considerations</h3>
        <ul>
            <li>Always verify the accuracy of employee information before saving or updating records.</li>
            <li>Regularly back up the employee database to prevent data loss.</li>
            <li>Ensure that only authorized personnel have access to employee management features.</li>
            <li>Follow company policies and compliance regulations when handling employee data.</li>
        </ul>
    </div>

    <div class="help-and-support">
        <h3>Help and Support</h3>
        <p>If you encounter any issues or have questions regarding employee management, contact your system administrator or the IT department for assistance.</p>
        
    </div>
</div>
    
    
</body>
</html>
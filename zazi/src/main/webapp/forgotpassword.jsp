<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href=style1.css>
<title>forgottenpage</title>

</head>
<body bgcolor=#F6F8C5>

<header class="head"><B>ZAZI <sub>&reg;</sub></B><br> A Digital Marketing Company</header>
<nav class="navbar">
<ul class=mainmenu>
<li><a href="login.jsp">Home</a></li>
<li><a href="history.html">History</a></li>
<li><a href="news.jsp">News and Events</a></li>
<li><a>Our Team</a>
<ul class="middlemenu">
<li><a href="employeelogin.jsp"><input type="button" id="employeelogin.jsp">
      <label for="employeelogin">Employee Login</label></a></li>     
<!-- <li><a href="">Employee login</a></li>-->
<li><input type="checkbox" id="managementlogin">
      <label for="managementlogin">Management Login</label>
<!-- <li><a>Management login</a></li></ul>-->
<ul class="submenu">
<li><a href="employee.jsp">Employee details</a></li> 
<li><a href="salary.jsp">salary details </a></li>
<li><a href="payroll.jsp">Payroll entry </a></li> 
<li><a href="empreg.jsp">New register </a></li></ul></li></ul>
<li><a href="contact.jsp">Contact us</a></li>
<li><a href="career.jsp">Career</a></li>
</ul>
</nav>

<form action="Forgotpassword" method=post id="form"onsubmit="return validatePassword()">
<div class=heading><h1>Forgotten password</h1></div>

<input type="hidden" name="email" value="${email}"> <!-- Added hidden field for email -->
    <div class=one><label for="pass">Enter new password</label><input type="password" id=pass name=cpass required></div>
    <button type="submit">submit</button>
    <button type="reset">cancel</button>


</form>

</body>
<script>
function validatePassword() {
    var password = document.getElementById("pass").value;
    var confirmPassword = document.getElementById("cpass").value;

    // Check if password is at least 6 characters
    if(password.length < 6) {
        alert("Password must be at least 6 characters long.");
        return false; // Prevent form submission
    }
    
    // Check if passwords match
    if(password !== confirmPassword) {
        alert("Passwords do not match.");
        return false; // Prevent form submission
    }
    
    return true; // Allow form submission
}
</script>
</html>
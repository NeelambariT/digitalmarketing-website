<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content=text/html;>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>salary</title>
<link rel="stylesheet" href=style1.css>
<script type="text/javascript">
    window.onload = function() {
        var password = prompt("Please enter the password to access this page:", "");
        if (password != "12345") {
            document.body.innerHTML = '<h1>Access Denied</h1><p>Incorrect password.</p>'; 
            // Or alternatively, redirect them to another page
            // window.location.href = "login.jsp";
        }
    };
</script>
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

<div class=boxlink><a class="linktag" href="Salarynew" target="box">View all payroll</a></div><br>
<div class=boxlink><a class="linktag" href="searchempidsal.jsp" target="box">Search by Empid</a></div><br>



<iframe name=box src="" height="300px" width="1100px"></iframe>
</body>

</html>

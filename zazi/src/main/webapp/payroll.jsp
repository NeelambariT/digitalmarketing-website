<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content=text/html;>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>ZAZI.COM/payroll</title>
<style>
h2{
color:black;
font-size:22px;
line-height:1;

}
h1{
color:maroon;
font-size:30px;
}
h3{
color:maroon;
font-size:20px;

}

.navbar {
background-color: gray;
position: relative;
z-index:999;
}
.navbar u1{
list-style-type: none;
margin: 0;
padding: 0;
background: black;
}
.navbar li{
display:inline-block;
}
.navbar li a{
color: white;
display:block;
padding: 15px 60px;
text-decoration: none;
font-size:20px;
text-align:center;
}
.navbar a:hover{
background-color:black;
}

.navbar ul ul{
position: absolute;
top:100%;
display:none;
}
.navbar ul ul li{
display:block;
background-color: gray;
}

.navbar ul ul li a:hover{
background-color:black;

}
.navbar li:hover ul{
display:block;
}
.pragh{
padding:20px 20px 200px;
font-size:25px;
}
.head{
text-align:center;
font-size:40px;
color:maroon;
}
aside{
width:49%;
float:left;
}
section{
width:49%;
float:left;
font-size:22px;
text-align:justify;
margin:1%;
}
.middlemenu {
display:block;
max-height: 100px;
  max-width: 300px;
  padding:0;
  line-height:50px;
  font-size:20px;
  color: white;
  text-align:center;

}
.middlemenu :hover{
  background-color: black;

}
/* hide the input */
.mainmenu input {
  display: none;
}
/* if a sibling checkbox is check show the menu */
.mainmenu input:checked ~ .submenu {
  display:block;
  max-height: 300px;
  max-width: 200px;
}
.submenu a, .submenu label {
  background-color: #583644;
}
.submenu a:hover {
  background-color: #666;
}
.submenu {
padding: 0px;
line-height:15px;
text-align: center;
margin:30px;
overflow: hidden;
  max-height: 0;
  transition: all 0.5s ease-out;
}


</style>
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
<form action =Payroll method="post">
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
<table align=center>
<tr><td>EmployeeID</td><td><input type=text name="empid" class=button12></td></tr>
<tr><td>Full Name</td><td><input type=text name="fname" class=button6></td></tr>
<tr><td>Department</td><td><input type=text name="dept" class=button7></td></tr>
<tr><td>Designation</td><td><input type=text name="design" class=button10></td></tr>
<tr><td>Basic pay </td><td><input type=number name="basicpay" class=button11></td></tr>
<tr><td>HRA</td><td><input type=number name="hra" class=button1></td></tr>
<tr><td>bonus</td><td><input type=number name="bonus" class=button8></td></tr>
<tr><td>Allowance</td><td><input type=number name="allow" class=button2></td></tr>
<tr><td>PF</td><td><input type=number name="pf" class=button3></td></tr>
<tr><td>Tax </td><td><input type=number name="tax" class=button4></td></tr>
</table>
<table align=center>
<tr><td><input type=submit value=register class=button5 style="background-color:#4CBB17;border:none;
height:30px;width:100px;font-size:20px;color:white;">
</td></tr>
</table>
</form>
<div align=center><input type=button class=button onclick="window.location.href='index.jsp';" value=back style="background-color:#4CBB17;border:none;height:30px;width:100px;font-size:20px;color:white;">
</div>
</body>
</html>
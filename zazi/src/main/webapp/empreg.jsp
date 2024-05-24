<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content=text/html;>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>ZAZI.COM/careers.</title>
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
z-index: 999;
}
.navbar u1{
list-style-type: none;
margin: 0;
padding: 0;
background: black;
}
.navbar li{
display: inline-block;
}
.navbar li a{
color: white;
display: block;
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
top: 100%;
display: none;
}
.navbar ul ul li{
display: block;
background-color: gray;
}
.navbar ul ul li a:hover{
background-color: black;

}
.navbar li:hover ul{
display: block;
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
.table{
font-size:18px;
padding:10px 100px 200px;
}
.resizetextbox
{
width:400px;
height:30px;
font-size:20px;
color:blue;
}
.button1,.button2{
border-radius:8px;

}
.navbar1{
list-style-type:none;
background-color:grey;
padding:0px;
margin:0px;
overflow:hidden;}
.navbar1 a{
color:maroon;
text-decoration:none;
padding:15px;
display:block;
text-align:center;
}
.navbar1 a:hover{
background-color:black;
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
<form action =Employeedetailsregister method="post">
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
<h4>success is not just a word,its a dream<br>welcome to our family"</h4>
<table align=center>
<tr><td>EmployeeID</td><td><input type=text name="empi" class=button12></td></tr>
<tr><td>First Name</td><td><input type=text name="fname" class=button6></td></tr>
<tr><td>Last Name</td><td><input type=text name="lname" class=button7></td></tr>
<tr><td>Designation</td><td><input type=text name="designa" class=button10></td></tr>
<tr><td>Experience </td><td><input type=text name="experiance" class=button11></td></tr>
<tr><td>Education qualification</td><td><input type=text name="edu" class=button1></td></tr>
<tr><td>Gender</td><td><input name="gen" type="radio" value='1'/>Male<input name="gen" type="radio" value='2'/>Female</td></tr>
<tr><td>Mobile No.</td><td><input type=text name="mobile" class=button2></td></tr>
<tr><td>Email Address </td><td><input type=text name="email" class=button3></td></tr>
<tr><td>Resident Address </td><td><input type=text name="address" class=button4></td></tr>
<tr><td>Date of birth </td><td><input type=date name="dob" class=button8></td></tr>
<tr><td>Date of joining </td><td><input type=date name="doj" class=button9></td></tr></table>
<table align=center>
<tr><td><input type=submit value=register class=button5 style="background-color:#4CBB17;border:none;
height:30px;width:100px;font-size:20px;color:white;">
</td></tr>
</table>
</form>
<div align=center><input type=button class=button onclick="window.location.href='index.jsp';" value=back style="background-color:#4CBB17;border:none;height:30px;width:100px;font-size:20px;color:white;">
</div>
</body>
<script>
document.querySelector('form').addEventListener('submit', function(event) {
    let isValid = true;

    const empId = document.querySelector('input[name="empi"]').value.trim();
    const firstName = document.querySelector('input[name="fname"]').value.trim();
    const lastName = document.querySelector('input[name="lname"]').value.trim();
    const designation = document.querySelector('input[name="designa"]').value.trim();
    const experience = document.querySelector('input[name="experiance"]').value.trim();
    const education = document.querySelector('input[name="edu"]').value.trim();
    const gender = document.querySelector('input[name="gen"]:checked');
    const mobile = document.querySelector('input[name="mobile"]').value.trim();
    const email = document.querySelector('input[name="email"]').value.trim();
    const address = document.querySelector('input[name="address"]').value.trim();
    const dob = document.querySelector('input[name="dob"]').value.trim();
    const doj = document.querySelector('input[name="doj"]').value.trim();

    if (empId === '' || firstName === '' || lastName === '' || designation === '' || experience === '' || education === '' || gender === null || mobile === '' || email === '' || address === '' || dob === '' || doj === '') {
        isValid = false;
        alert('Please fill in all fields.');
    }

    const mobilePattern = /^[6-9]\d{9}$/;
    if (!mobilePattern.test(mobile)) {
        isValid = false;
        alert('Please enter a valid Indian mobile number.');
    }

    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(email)) {
        isValid = false;
        alert('Please enter a valid email address.');
    }

    if (!isValid) {
        event.preventDefault();
    }
});
</script>
</html>
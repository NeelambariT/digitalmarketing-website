<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<body bgcolor=#F6F8C5>
<form action =Career method="post">
<header class="head"><B>ZAZI <sub>&reg;</sub></B><br> A Digital Marketing Company</header>
<nav class="navbar">
<ul class=mainmenu>
<li><a href="login.jsp">Home</a></li>
<li><a href="history.html">History</a></li>
<li><a href="news.jsp">News and Events</a></li>
<li><a>Our Team</a>
<ul class="middlemenu">
<li><a href="employeelogin.jsp"><input type="button" id="employeelogin">
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
</nav><div><h1 align =center >Willing to Join in our journey?</h1></div>
<h2> REGISTER WITH ZAZI</h2>
<div class=table><H2>Personal Information</H2>
FirstName
<br><input type=text  class="resizetextbox" name="Firstname" ><br>
LastName
<br><input type=text class="resizetextbox" name="Lastname" ><br>
MobileNumber
<br><input type=text class="resizetextbox"  name="mobnum" ><br>
Gender
<br><input type=radio  value='1'  name="gen" />Male <input type=radio  value='2'  name="gen" />Female<br>
Emailid
<br><input type=text  class="resizetextbox" name="email" ><br>
Year Of Graduation
<br><input type=text class="resizetextbox" name="year" ><br>
Location
<br><input type=text class="resizetextbox"  name="location" ><br>
Experience
<br><input type=text  class="resizetextbox" name="exp" ><br>
CurrentJob
<br><input type=text class="resizetextbox" name="job" ><br>
Skillset
<br><input type=text class="resizetextbox"  name="skills" ><br>
<br>
<input type=submit class="button1" value=REGISTER style="background-color:#4CBB17;border:none;height:30px;width:110px;font-size:15px;color:white;">
<input type=reset  class="button2" value=CLEAR style="background-color:#4CBB17;border:none;height:30px;width:80px;font-size:15px;color:white;">
</div>
 <h4 align=center>Copyright&copy;2024 All rights reserved|This website is made by Neelambari</h4>
 </form>
</body>
<script>document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('form[action="Career"]');
    
    form.addEventListener('submit', function(event) {
        event.preventDefault();
        if(validateForm()) {
            this.submit();
        }
    });

    function validateForm() {
        const firstName = document.querySelector('input[name="Firstname"]').value.trim();
        const lastName = document.querySelector('input[name="Lastname"]').value.trim();
        const mobileNumber = document.querySelector('input[name="mobnum"]').value.trim();
        const email = document.querySelector('input[name="email"]').value.trim();
        const yearOfGraduation = document.querySelector('input[name="year"]').value.trim();
        const location = document.querySelector('input[name="location"]').value.trim();
        const experience = document.querySelector('input[name="exp"]').value.trim();
        const currentJob = document.querySelector('input[name="job"]').value.trim();
        const skillset = document.querySelector('input[name="skills"]').value.trim();

        if(firstName === '' || lastName === '' || mobileNumber === '' || email === '' || yearOfGraduation === '' || location === '' || experience === '' || currentJob === '' || skillset === '') {
            alert('Please fill in all fields.');
            return false;
        }

        if(!validateEmail(email)) {
            alert('Please enter a valid email address.');
            return false;
        }

        return true;
    }

    function validateEmail(email) {
        const re = /\S+@\S+\.\S+/;
        return re.test(email);
    }
});</script>
</html>
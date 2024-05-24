<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content=text/html;>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>ZAZI.COM/contact</title>
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
width:35%;
float:left;
}
section{
width:30%;
float:left;
}
article{
width:35%;
float:left;
}
.last{
text-color:marron;
float:left;
text-align:center;
}
.navbar1{
width:100%;
overflow:auto;
list-style-type:none;
background-color:#90EE90;
margin:0px;
padding:15px;
}
.resizetextbox
{
width:400px;
height:30px;
font-size:20px;
color:blue;
}
.resize
{
width:400px;
height:80px;
font-size:17px;
color:blue;
}
table{
font-size:18px;
padding:10px 100px 200px;
text-align:left;
color:purple;
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
<form action=Contact method="post">
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
<nav class=navbar1>
 <aside>
 <h2>Address</h2>
 <h3>127/4 new street,2nd cross road,chennai(headoffice).</h3></aside>
 <section>
 <h2 align="center">Email</h2>
 <h3 align="center">hrmarketing@zazi.com
 </h3>
 </section>
 <article>
 <h2 align="center">Phone</h2>
 <h3 align="center">+91 2345612390</h3>
 </article>
 </nav>
 <div class="last">
 <h2  align=center style="color:purple">Have Project?Feel Free to talk.Our team will lead you!</h2>
 <h2  align=center style="color:maroon"><i>Our team will contact you within 3 workingdays</i></h2>
 </div><br><br><br>
 <table><tr><td>Name </td><td><input type=text  class="resizetextbox" name="name" required></td></tr> 
<tr><td>Company/Project Name</td><td><input type=text class="resizetextbox" name="cname" required></td></tr>
<tr><td>Contact Number</td><td><input type=text class="resizetextbox"  name="mobnum" required ></td></tr>
<tr><td>Email Address</td><td><input type=text class="resizetextbox"  name="email" required ></td></tr>
<tr><td>Project Description</td><td><input type=text class="resize" name="description"></td></tr>
<tr><td><input type=submit class="button1" value=SUBMIT style="background-color:#4CBB17;border:none;height:30px;width:110px;font-size:15px;color:white;"></td><td>
<input type=reset  class="button2" value=CLEAR style="background-color:#4CBB17;border:none;height:30px;width:80px;font-size:15px;color:white;"></td></tr>
</table>

<br>
 <h4 align=center>Copyright&copy;2024 All rights reserved|This website is made by Neelambari</h4>
</form>
</body>
<script>
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('form[action="Contact"]');
    
    form.addEventListener('submit', function(event) {
        event.preventDefault();
        if(validateForm()) {
            this.submit();
        }
    });
    
    function validateForm() {
        const name = document.querySelector('input[name="name"]').value.trim();
        const cname = document.querySelector('input[name="cname"]').value.trim();
        const mobnum = document.querySelector('input[name="mobnum"]').value.trim();
        const email = document.querySelector('input[name="email"]').value.trim();
        
        if(name === '' || cname === '' || mobnum === '' || email === '') {
            alert('Please fill in all required fields.');
            return false;
        }
        
        return true;
    }
});
</script>
</html>
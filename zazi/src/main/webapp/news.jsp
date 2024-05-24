<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content=text/html;>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>ZAZI.COM/NEWSANDEVENTS.</title>
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
nav{
background-color:white;
}
.subheading{
color:gray;
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
<img src="file:///C:/Users/saine/eclipse-workspace/zazi/image/news.jpg" width=100%/>
<div><h2>INDUSTRIAL EVENTS <br><br><i>keep in touch with uptodate seminars,webinars,workshop Events</i></h2></div>
<nav>
<div class=subheading><h5>VIRTUAL EVENT</h5></div>
<DIV><h3>PREDICTION 2024 DIGITAL MARKETING</h3></DIV>
<div class=subheading><h5>JAN 22 thurs 1 P.M</h5></div>
<div class=subheading><h5><i>presented by Zazi groups</i></h5></div>
</nav>
<hr>
<nav>
<div class=subheading><h5>WEBINAR</h5></div>
<DIV><h3>DIGITAL MARKETING STRATEGY</h3></DIV>
<div class=subheading><h5>FEB 04 Mon 3 P.M</h5></div>
<div class=subheading><h5><i>presented by founder of zazi</i></h5></div>
</nav>
<hr>
<div><h2> NEWS <br><br><i>press release |Event news|Zazi featured </i></h2></div>
<nav>
<div class=subheading><h5>Jan 11 2024 </h5></div>
<img src="file:///C:/Users/saine/eclipse-workspace/zazi/image/party.jpg"/>
<DIV><h3>success meet 2023  is a grandparty conducted by chairpersons and co-founder of Zazi Groups.In this meet founder
 Ms.Zazi share her lifestruggles with a quote "nothing is impossible with Education" </h3></DIV>
<div class=subheading><h5>chennai dated 11 jan 2024</h5></div>
<div class=subheading><h5><i>ABC news.</i></h5></div>
</nav>
<footer><h4 align=center>Copyright&copy;2024 All rights reserved|This website is made by Neelambari</h4>
</footer>

</body>
</html>
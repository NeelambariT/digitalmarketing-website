<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content=text/html;>
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>ZAZI.COM/LOGIN</title>
<link rel="icon" type=image/x-icon href="/image/fevicon.ico"/>
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
.column{

float:left;
width:50%;
}
.row{
display:flex;
}
.column{ 
flex:50%;
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
float:left;
text-align:center;
}
.pragh{
padding:20px 20px 200px;
font-size:25px;
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
<div class="row">
<div class="column" style="padding:5px 5px 50px;font-size:25px;">

<img src="file:///C:/Users/saine/eclipse-workspace/zazi/image/ezgif.com-video-to-gif-4.gif" width="100%"/></div>
<div class="column" style="padding:5px 5px 50px;font-size:22px; color:maroon">
<p><b><I>WHAT WE DO?</I></b></p>
<ul><li>Market Research</li>
<li>Online Marketing</li>
<li>Paid Promotions</li>
<li>Web and App Development</li>
<li>Branding the product</li>
<li>24/7 Support</li></ul>
<p><b><I>Why digital marketing?</I></b></p>
<p><b><I>"Ignoring digital marketing is like opening business but not telling anyone" </I></b></p>
</div>
</div>
<div class=pragh>
<h2 align=center style="color:maroon">About Us</h2>
<p align=justify> "BRAND" is the magical word that rules the minds of customers.We are a digital marketing company works to make your brand better in soceity .we create custom solution to your brand
and make you grow digitally by understanding your brand objectives and value. <p>
<p align=justify> We can make your product into a brand by doing live market research of compitators and buyers.Our work is improve your product in terms of sales and values.
</p>
<br>
<h2 align=center style="color:maroon">Our Clients</h2>
<img src="file:///C:/Users/saine/eclipse-workspace/zazi/image/fakecom1.png" width=20% height=20%/>
<img src="file:///C:/Users/saine/eclipse-workspace/zazi/image/fakecom2.png"width=20% height=20%/>
<img src="file:///C:/Users/saine/eclipse-workspace/zazi/image/logostellar.png"width=20% height=20%/>
<img src="file:///C:/Users/saine/eclipse-workspace/zazi/image/fakecom4.jpg"width=20% height=20%/>
<img src="file:///C:/Users/saine/eclipse-workspace/zazi/image/fakecom3.jpg"width=12% height=12%/>

</div>


<script>
 window.onscroll=function()
 {
	 scrollFunction();
 }
 function scrollFunction(){
	 if(document.body.scrollTop>20 || document.documentElement.scrollTop>20){
		 document.getElementById("navbar").style.top="0";
	 }
	 else{
		 document.getElementById("navbar").style.top="-50px";
	 }
 }
 </script>
  <footer>
 <nav class=navbar1>
 <aside>
 <h2>ZAZI<sub>&reg;</sub></h2>
 <h3>Help You To Build Your Product by doing market research,online marketing and 24/7 support</h3></aside>
 <section>
 <h2 align="center">UsefullLinks</h2>
 <h3><a href="login.jsp">Home</a>
<a href="history.html">History</a>
<a href="news.jsp">News and Events</a>
<a href="employee.jsp">Employee Details</a>
<a href="contact.jsp">Contact us</a>
<a href="career.jsp">Career</a>
 </h3>
 <div class="last">
 <h4>Copyright&copy;2024 All rights reserved|This website is made by Neelambari</h4>
 </div>
 </section>
 <article>
 <h2 align="center">Have a question?</h2>
 <h3 align="center">Contact Us: zazi@123.com</h3>
 </article>
 </nav>
  </footer>

</body>
</html>
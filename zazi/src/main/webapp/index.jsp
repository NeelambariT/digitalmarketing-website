<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ZAZI.COM</title>
<style type="text/css">
h1{
font-size:45px;
color:maroon;
align:left;
line-height:0;
}
h3{
font-size:25px;
color:maroon;
align:left;
line-height:0;
}
h4{
line-height:0}
body{
background-image:url(file:///C:/Users/saine/eclipse-workspace/zazi/image/blue.jpg);
background-size:125%;
background-position:center;
background-repeat:no-repeat;
font-size:25px;
font-style:opensans;
color:white;
}
</style>
</head>
<body bgcolor=#757CCF>
<div class=container>
<form action=Newuser method="post" id="form">
<h1>Zazi <sub>&reg;</sub></h1>
<h3>A Digital Marketing Company</h3>
<br><br><br><br>
<table align=center> <tr><td>Email Address:</td><td><input type=text name="email"></td></tr>
<tr><td>Password:</td><td><input type=password name="epass"></td></tr></table>
<table align=center><tr><td><input type=submit value=login style="background-color:#4CBB17;border:bold;height:30px;width:70px;font-size:20px;color:white;"></table>
<table align=center><tr><td> <a style="text-decoration:none;color:white;"href="forgot.jsp">forgot password?</a></td></tr></table>
<h4 align=center>or</h4>
<table align=center><tr><td><a style="text-decoration:none;color:white;"href="Newentry.jsp">create new account</a></td></tr></table>
</form>
</div>
</body>
<script>
document.getElementById('form').addEventListener('submit', function(event) {
    const email = document.getElementsByName('email')[0].value;
    const password = document.getElementsByName('epass')[0].value;

    if (!validateEmail(email)) {
        alert('Please enter a valid email address.');
        event.preventDefault();
    }

    if (password.length < 6) {
        alert('Password must be at least 6 characters long.');
        event.preventDefault();
    }
});

function validateEmail(email) {
    const re = /\S+@\S+\.\S+/;
    return re.test(email);
}

</script>
</html>
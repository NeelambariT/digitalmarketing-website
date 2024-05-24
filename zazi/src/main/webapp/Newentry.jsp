<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ZAZI.COM/register</title>
</head>
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
body{
background-image:url(file:///C:/Users/saine/eclipse-workspace/zazi/image/blue.jpg);
background-size:125%;
background-position:center;
background-repeat:no-repeat;
font-size:25px;
font-family:opensans;
color:white;
}
.button,.button5
{
border-radius:12px;
}
.button1,.button2,.button3,.button4,.button6,.button7
{
border-radius:8px;
}
h4{
text-align:center;
font-family:verdana;
font-size:20px;
color:black;
}
</style>
</head>
<body bgcolor=#556B2F>
<form action=Register method="post"  id="registrationForm">
<h1>Zazi <sub>&reg;</sub></h1>
<h3>A Digital Marketing Company</h3><br>
<h4>"Welcome to the Zazi family<br>its free anyone can join to get access at anywhere at any time"</h4>
<table align=center><tr><td>First Name</td><td><input type=text name="fname" class=button6></td></tr>
<tr><td>Last Name</td><td><input type=text name="lname" class=button7></td></tr>
<tr><td></td></tr>
<tr><td>Age</td><td><input type=number name="age" class=button1 ></td></tr>
<tr><td>Gender</td><td><input name="gen" type="radio" value='1'/>Male<input name="gen" type="radio" value='2'/>Female</td></tr>
<tr><td>Mobile No.</td><td><input type=text name="mobile" class=button2></td></tr>
<tr><td>Email Address </td><td><input type=text name="email" class=button3></td></tr>
<tr><td>Password </td><td><input type=password name="epass" class=button4></td></tr></table><table align=center>
<tr><td><input type=submit value=register class=button5 style="background-color:#4CBB17;border:none;
height:30px;width:100px;font-size:20px;color:white;">
</table>
</form>
<div align=center><input type=button class=button onclick="window.location.href='index.jsp';" value=back style="background-color:#4CBB17;border:none;height:30px;width:100px;font-size:20px;color:white;">
</div>
</body>
<script>
document.getElementById('registrationForm').onsubmit = function(event) {
    // Prevent the form from submitting if validation fails
    if (!validateForm()) {
        event.preventDefault();
    }
};

function validateForm() {
    const fname = document.forms["registrationForm"]["fname"].value;
    const lname = document.forms["registrationForm"]["lname"].value;
    const age = document.forms["registrationForm"]["age"].value;
    const gender = document.forms["registrationForm"]["gen"].value;
    const mobile = document.forms["registrationForm"]["mobile"].value;
    const email = document.forms["registrationForm"]["email"].value;
    const epass = document.forms["registrationForm"]["epass"].value;

    const fields = [fname, lname, age, gender, mobile, email, epass];
    
    for (let i = 0; i < fields.length; i++) {
        if (fields[i] === "") {
            alert("All fields must be filled out");
            return false;
        }
    }

    // Add additional validation checks as necessary
    // Example: Check if the email address looks like an email:
    if (!validateEmail(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    // If all validations pass
    return true;
}

function validateEmail(email) {
    const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

</script>
</html>


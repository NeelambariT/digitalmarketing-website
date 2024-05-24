<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.three{
text-align:center;
}
button{
border-radius:100;
}
#empid{
font-size:15px;
width:150px;
height:25px;
border: 2px solid #8080ff;
}
</style>
</head>
<body>
<form action=Searchid>
<div class=three><input type="text" id=empid name=empid placeholder="enter Empid"><button type="submit">Search</button></div>
<%String empid = request.getParameter("empid");%>




</form>
</body>
</html>
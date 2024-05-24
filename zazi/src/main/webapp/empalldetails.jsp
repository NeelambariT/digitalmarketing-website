<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content=text/html;>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="style1.css">
<title></title>
</head>
<body>
<form>
<table id="tabledetails">
<tr>
<th><b>Empid</b></th>
<th><b>First Name</b></th>
<th><b>Last Name</b></th>
<th><b>Gender</b></th>
<th><b>Dob</b></th>
<th><b>Designation</b></th>
<th><b>Doj</b></th>
<th><b>Contact</b></th>
<th><b>Experiance</b></th>
<th><b>Address</b></th>
<th><b>email</b></th>
<th><b>Education</b></th>
</tr>
<% Iterator<?> itr; %>
<%List<?> data= (List<?>)request.getAttribute("data");
for (itr=data.iterator(); itr.hasNext(); )
{
%>
<tr>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
<td><%=itr.next()%></td>
</tr>
<%}%>
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<th><b>Fullname</b></th>
<th><b>Department</b></th>
<th><b>Designation</b></th>
<th><b>Basicpay</b></th>
<th><b>HRA</b></th>
<th><b>Allowance</b></th>
<th><b>Bonus</b></th>
<th><b>PF</b></th>
<th><b>IncomeTax</b></th>
<th><b>NetSalary</b></th>
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
</tr>
<%}%>
</table>
</form>
</body>
</html>
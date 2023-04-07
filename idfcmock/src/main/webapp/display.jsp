<%@page import="programs.Emplyoee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px">
		<tr>
			<th>emp id</th>
			<th>emp name</th>
			<th>mail</th>
			<th>phone no</th>
			<th>password</th>
		</tr>

		<%
		Emplyoee data = (Emplyoee) request.getAttribute("requestKey");
		%>
		<tr>
			<td><%=data.getId()%></td>
			<td><%=data.getName()%></td>
			<td><%=data.getEmail()%></td>
			<td><%=data.getNumber()%></td>
			<td><%=data.getPassword()%></td>
		</tr>
	</table>

</body>
</html>
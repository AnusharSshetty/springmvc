<%@page import="programs.Emplyoee"%>
<%@page import="java.util.List"%>
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
		List<Emplyoee> data = (List<Emplyoee>) request.getAttribute("key");
		for (Emplyoee emplyoee : data) {
		%>
		<tr>
			<td><%=emplyoee.getId()%></td>
			<td><%=emplyoee.getName()%></td>
			<td><%=emplyoee.getEmail()%></td>
			<td><%=emplyoee.getNumber()%></td>
			<td><%=emplyoee.getPassword()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>
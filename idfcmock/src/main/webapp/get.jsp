<%@page import="programs.Emplyoee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="displayjs" modelAttribute="formKey">
		<h1>DETAILS</h1>
		<table>
			<tr>
				<td><label for="a">ID :</label></td>
				<td><form:input type="number" path="id" id="a" placeholder="id" /></td>
			</tr>
			<tr>
				<td><form:button value="">GET DETAILS
					</form:button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
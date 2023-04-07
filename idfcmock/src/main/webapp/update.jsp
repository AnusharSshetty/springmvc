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
	<form:form action="updatejs" modelAttribute="formKey">
		<h1>UPDATE ACCOUNT</h1>
		<table>
			<tr>
				<td><label for="a">ID :</label></td>
				<td><form:input type="number" path="id" id="a" placeholder="id" /></td>
			</tr>
			<tr>
				<td><label for="b">EMAIL :</label></td>
				<td><form:input type="text" path="email" id="b"
						placeholder="abc@gmail.com" /></td>
			</tr>
		</table>
		<tr>
			<td><form:button value="">UPDATE
					</form:button></td>
		</tr>
	</form:form>
</body>
</html>
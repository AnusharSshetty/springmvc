<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="deletejs" modelAttribute="attributes">
		<h1>DELETE ACCOUNT</h1>
		<table>
			<tr>
				<td><label for="a">ID :</label></td>
				<td><form:input type="number" path="id" id="a"
						placeholder="id" /></td>
			</tr>
			<tr>
				<td><form:button value="">DELETE
					</form:button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tarinees Details</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	welcome ${user.username}
	<br>
	<a href="logoutController">logout</a>
	<br>
	<table>

		<thead>
			<tr>
				<th>id</th>
				<th>Name</th>
				<th>Branch</th>
				<th>Percentage</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${Trainees}" var="trainee">
				<tr>
					<td>${trainee.id}</td>
					<td>${trainee.name}</td>
					<td>${trainee.branch}</td>
					<td>${trainee.percentage}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<a href="traineeController.do?action=addtrainee">add new Traineee</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tarinees Details</title>
<style type="text/css">
table {
  border:2px solid green;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
</head>
<body>
	welcome ${user.username}
	<br>
	<form action="logoutController">
	<button>logout</button>
	</form>
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
	<button onclick="location.href='traineeController.do?action=addtrainee'" type="button">Add Trainee</button>
</body>
</html>
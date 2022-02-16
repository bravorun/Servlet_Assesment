<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tarinees Details</title>
<style type="text/css">
.button {
  background-color: #3388FF ; 
  border: none;
  color: white;
  padding: 5px 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin: 4px 2px;
  transition-duration: 0.8s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}
.buttonlogout {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}
.buttonlogout:hover{
  background-color: #FF0000;
  color: white;
}
body{
  justify-content: center;
  }
  table {
  justify-content: center;
  width:80%;
  border:2px solid green;
}
th, td {
  text-align: left;
  padding: 8px;
}
th{
	background-color: #f2f2f2;
	text-align: center;
}
tr:nth-child(even) {background-color: #f2f2f2;}
</style>
</head>
<body>

	welcome ${user.username}
	<center>
	<table>

		<thead>
			<tr >
				<th>id</th>
				<th>Name</th>
				<th>Branch</th>
				<th>Percentage</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${Trainees}" var="trainee">
				<tr>
					<td >${trainee.id}</td>
					<td >${trainee.name}</td>
					<td >${trainee.branch}</td>
					<td >${trainee.percentage}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<button  class="button button1" onclick="location.href='traineeController.do?action=addtrainee'" type="button">Add Trainee</button>
	<form action="logoutController">
	<button  class="button buttonlogout">logout</button>
	</center>
	</form>
	
</body>
</html>
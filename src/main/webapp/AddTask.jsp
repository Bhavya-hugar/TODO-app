<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Task</title>
</head>
<body>
	<form action="addtask" method="post"
		style="padding: 20px; margin: 20px; border: 2px solid black; width: 30%">
		<table align="center">
			<tr>
				<th><h2 align="center" style="color: green">${pass}</h2>
					<h2 align="center" style="color: red">${fail}</h2></th>
			</tr>
			<tr>
				<th>Name:</th>
				<th><input type="text" name="name" required></th>
			</tr>
			<tr>
				<th>Description:</th>
				<th><textarea rows="5" name="description" cols="20"></textarea></th>
			</tr>
			<tr>
				<th>Date:</th>
				<th><input type="date" name="day"></th>
			</tr>
			<tr>
				<th><button>Add</button></th>
				<th><button type="reset">Cancel</button></th>
			</tr>
		</table>
	</form>
</body>
</html>
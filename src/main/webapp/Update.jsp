<%@page import="todo.dao.TodoDao"%>
<%@page import="todo.dto.Task"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="updatetask" method="post"
  style="padding: 20px; margin: 20px; border: 2px solid black; width: 30%">
		<table align="center">
		
			<tr>
				<th><h2 align="center" style="color: green">${pass}</h2>
					<h2 align="center" style="color: red">${fail}</h2></th>
			</tr>
			
			
			
			<tr>
				<th>Id:</th>
				<th><input type="text" name="id" value="${task.getId()}" readonly="readonly"></th>
			</tr>
			<tr>
				<th>Name:</th>
				<th><input type="text" name="name" value="${task.getName()}" required></th>
			</tr>
			<tr>
				<th>Description:</th>
				<th><textarea rows="5" name="description" cols="20">${task.getDescription()}</textarea></th>
			</tr>
			<tr>
				<th>Date:</th>
				<th><input type="date" name="day" value="${task.getDate()}"></th>
			</tr>
			<tr>
				<th><button>Update</button></th>
				<th><button type="reset">Cancel</button></th>
			</tr>
		</table>




</form>
</body>
</html>
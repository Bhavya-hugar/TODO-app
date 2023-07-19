<%@page import="todo.dto.Task"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ToDo Home</title>
</head>
<body>
<%List<Task> list =(List<Task>) request.getAttribute("list"); %>
<h2 style="color:green">${pass}</h2>
<h2 style="color:red">${fail}</h2>
<h1 align="center">Todo Home Page</h1>
<fieldset>
<table align="center" border="2px solid black" >
			<tr>
				<th>ID</th>
				<th>Task Name</th>
				<th>Description</th>
				<th>Date</th>
				<th>Status</th>
				<th>Change Status</th>
				<th>Delete</th>
				<th>Update</th>
			</tr>
			<% for(Task t:list)
			{%>
			<tr>
				<th><%= t.getId()%></th>
				<th><%= t.getName()%></th>
				<th><%= t.getDescription()%></th>
				<th><%= t.getDate()%></th>
				<th><%if( t.isStatus())%>completed <%else%>incomplete</th>
				<th><a href="changestatus?id=<%=t.getId()%>"><button>Change</button></a></th>
				
				
				<th><a href="delete?id=<%=t.getId()%>"><button>Delete</button></a></th>
				<th><a href="update?id=<%=t.getId()%>"><button>Update</button></a></th>
			</tr>
			<% }%>
		</table>
	<a href="AddTask.jsp"><button style="margin-top:50px;margin-left: 300px;margin-right: 600px">Add Task</button></a>
		<a href="logout"><button>Logout</button></a>
		</fieldset>
</body>
</html>
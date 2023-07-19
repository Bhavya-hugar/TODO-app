<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<h1>Welcome to TODO APP</h1>
<div class="form" >
<h1 style="color:green">${pass}</h1>
<h1 style="color:red">${fail}</h1>
<form action="login" method="post" style="padding:20px;margin: 20px; border: 2px solid black; width: 30%">
<table>
<tr>
<th>Email :</th>
<td><input type="email" name="email"></td>
</tr>
<tr>
<th>Password :</th>
<td><input type="password" name="password"></td>
</tr>
<tr>
<th><button>Login</button></th>
<th><button type="reset">Cancel</button></th>
</tr>



</table>

</form>
<a href="SignUp.jsp"><button>Signup here</button></a>
</div>
</body>
</html>
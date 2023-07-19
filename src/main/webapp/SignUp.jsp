<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style="color:red">${fail}</h1>	
<div class="form">
		<h1>Enter Your Details</h1>
		<form action="signup" method="post" style="padding:20px;margin: 20px;border: 2px solid black; width: 30%">
			<table>
				<tr>
					<th>Name:</th>
					<th><input type="text" name="name" required></th>
				</tr>
				<tr>
					<th>Email:</th>
					<th><input type="email" name="email" required></th>
				</tr>
				<tr>
					<th>Password:</th>
					<th><input type="password" name="password" required></th>
				</tr>
				<tr>
					<th><button>Signup</button></th>
					<th><button type="reset">Cancel</button></th>
				</tr>
			</table>
		</form>
		<a href="Login.jsp"><button>Back</button></a>
	</div>

</body>
</html>
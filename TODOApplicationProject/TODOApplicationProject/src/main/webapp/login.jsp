<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
body {
	padding: 0px;
	margin: 0px;
	background: url(image/laptop.jpg);
	background-size: cover;
}
h1 {
	text-align: center;
	margin: 20px;
	padding: 50px 0px;
}
div {
	background-color: #f2f2f2;
	border-radius: 10px;
	border: 2px solid black;
	padding: 30px;
	width: 40%;
	position: absolute;
	left: 30%;
	top: 20%;
	margin: 10px;
}

input[type=text] {
	width: 50%;
	border: 2px solid #ccc;
	border-radius: 5px;
	padding: 10px;
	margin: 10px 0px;
}

input[type=submit] {
	background-color: #4CAF50;
	border: none;
	border-radius: 10px;
	width: 55%;
	padding: 10px;
	color: white;
	margin: 20px 0px;
	cursor: pointer;
}
input[type=submit]:hover {
	background-color: #b4b4b4;
	color: black;
}
</style>
</head>
<body>
<h1>Login Here</h1>
<div>
<form action="login" method="get">
<label><b>UserName</b></label>
<br>
<input type="text" name="uname" placeholder="Enter username" required>
<br>
<label><b>Password</b></label>
<br>
<input type="text" name="pwd" placeholder="Enter Password" required>
<br>
<input type="submit" value="Login">
</form>
</div>
</body>
</html>
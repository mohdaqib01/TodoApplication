<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Todo</title>
<link rel="stylesheet" href="common/style.css">
<style type="text/css">
body {
	padding: 0px;
	margin: 0px;
	background: url(image/fotis.jpg);
	background-size: cover;

}
h1 {
   text-align: center;
   color: white;
}
#add {
	background-color: #f2f2f2;
	border-radius: 10px;
	padding: 30px 0px;
	width: 40%;
	position: absolute;
	left: 30%;
	top: 30%;
	margin: 10px;
}
label {
    padding: 0px;
	margin: 0px; 
	position: absolute;
	left: 25%;
}
input[type=text], [type=date] {
	width: 50%;
	height: 20px;
	font-size: 20px;
	border: 2px solid #ccc;
	border-radius: 5px;
	padding: 10px 0px;
	margin: 10px 0px;
}

input[type=submit] {
	background-color: #4CAF50;
	border: none;
	border-radius: 10px;
	width: 50%;
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
<%@include file="common/header.jsp" %>
<%@include file="common/navigation.jsp" %>
<h1>ADD TODOS HERE</h1>
<div id="add">
<form action="registertodo" method="get">

<label><b>TODO Description</b></label>
<br>
<input type="text" name="description">
<br>
<label><b>Target Date</b></label>
<br>
<input type="date" name="tdate">
<br>
<input type="submit" value="submit">
</form>
</div>

<%@include file="common/footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link rel="stylesheet" href="common/style.css">
<style type="text/css">
body {
	padding: 0px;
	margin: 0px;
	background: url(image/wallpaper.jpg);
	background-size: cover;
	
}
h1 {
	text-align: center;
	margin: 20px;
	color: white;
}
.subf {
	border: 2px solid black;
	border-radius: 10px;
	width: 30%;
	padding: 10px;
	margin: 10px;
	background-color: rgb(240, 240, 240);
	position: relative;
	left: 34%;	
}
label {
	padding: 0px;
	margin: 0px;
	position: fixed;
	left: 41%;	

}
input[type=text], [type=date] {
	padding: 5px;
    width: 60%; 
	height: 30px;
	font-size: 20px;
	border: 2px solid #ccc;
	border-radius: 5px;
	margin:10px 0px;
	
}
input[type=submit] {
	background-color: #3cb371;
	color: white;
	cursor: pointer;
	width: 62%;
	padding: 10px;
	margin: 20px 0px;
	border-radius: 5px;
}
input[type=submit]:hover {
	background-color: #f0f0f0;
	color: black;
}
</style>
</head>
<body>
<%@include file="common/header.jsp" %>
<%@include file="common/navigation.jsp" %>
<h1>UpDate TODOS Here</h1>
<br/>
<div class="subf">
<form method="get" action="updatetodo">

<input type="hidden" name="id" value="${obj.id}">
<label for="description"><b>TODO Description</b></label><br>
<input type="text" name="description" value="${obj.description}"><br>
<label for="tdate"><b>Target Date</b></label><br>
<input type="date" name="tdate" value="${obj.tdate}"><br/>
<input type="submit" value="submit">
</form>
</div>
<%@include file="common/footer.jsp" %>
</body>
</html>
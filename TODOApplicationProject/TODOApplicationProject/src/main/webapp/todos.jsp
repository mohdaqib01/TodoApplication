<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Todos</title>
<link rel="stylesheet" href="common/style.css">
<style type="text/css">
body {
	padding: 0px;
	margin: 0px;

}
h1 {
   text-align: center;
}
table {
	border: 1px solid #ddd;
	width: 60%;
	margin-left: 20%;
	text-align: center;
}
td {
	border: 1px solid #ddd;
	height: 30px;
}
th {
    background-color: #04AA6D;
    color: white;
    height: 25px;
}
table a {
	border:1px solid black;
	border-radius: 5px;
 	text-decoration: none;
 	font-size: 20px;
 	color: white;
 	background-color: gray; 	
}
table a:hover {
	background-color: #e7e7e7;
	color: black;
}
</style>
</head>
<body>
<%@include file="common/header.jsp" %>
<%@include file="common/navigation.jsp" %>
<h1>Welcome User You Can See All TODOS Here</h1>

<table>
<tr>
<th>S.no</th>
<th>Description</th>
 <th>Target Date</th>
 <th>Option</th>
</tr>

<c:forEach var="todo" items="${obj }">  
<tr>
<td>${todo.id }</td>
<td> ${todo.description }</td>
<td> ${todo.tdate }</td>
<td><a href="edittodo?id=${todo.id }">Edit</a>
<a href="deletetodo?sno=${todo.id }">Delete</a></td></tr>
</c:forEach>  
</table>
<%@include file="common/footer.jsp" %>
</body>
</html>
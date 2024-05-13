<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List Category</h1>
<a href="/demo/categories?action=createGet">Create new</a>
<table>
	<tr>
		<th>STT</th>
		<th>Name</th>
		<th>Action</th>
	</tr>
	<c:forEach items="${categories}" var="c" varStatus="cs">
	<tr>
		<td>${cs.count }</td>
		<td>${c.name }</td>
		<td><a href="/demo/categories?action=updateGet&id=${c.id }"><button>Edit</button></a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
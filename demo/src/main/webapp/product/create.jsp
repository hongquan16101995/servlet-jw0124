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
<h2>Create form</h2>
<form action="/demo/products?action=createPost" method="post">
	<p>Id</p>
	<input name="id">
	<p>Name</p>
	<input name="name">
	<p>Price</p>
	<input name="price">
	<p>Quantity</p>
	<input name="quantity">
	<p>Image</p>
	<input name="image">
	<p>Category</p>
	<select name="cId">
		<c:forEach items="${categories }" var="c">
			<option value = "${c.id }">${c.name }</option>
		</c:forEach>
	</select>
	<button type="submit">Create</button>
</form>
</body>
</html>
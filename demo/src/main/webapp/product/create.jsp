<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<button type="submit">Create</button>
</form>
</body>
</html>
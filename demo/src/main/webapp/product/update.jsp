<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Update form</h2>
<form action="/demo/products?action=updatePost" method="post">
	<p>Id</p>
	<input name="id" value="${product.id }" readonly>
	<p>Name</p>
	<input name="name" value="${product.name }" >
	<p>Price</p>
	<input name="price" value="${product.price }" >
	<p>Quantity</p>
	<input name="quantity" value="${product.quantity }" >
	<p>Image</p>
	<input name="image" value="${product.image }" >
	<button type="submit">Create</button>
</form>
</body>
</html>
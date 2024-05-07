<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	img {
		width: 150px;
		height: 150px;
	}
</style>
</head>
<body>
<h1>List Product</h1>
<a href="/demo/products?action=createGet">Create new</a>
<table>
	<tr>
		<th>STT</th>
		<th>Name</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Image</th>
		<th colspan="2">Action</th>
	</tr>
	<c:forEach items="${products}" var="p" varStatus="ps">
	<tr>
		<td>${ps.count }</td>
		<td>${p.name }</td>
		<td>${p.price }</td>
		<td>${p.quantity }</td>
		<td><img src="${p.image }"/></td>
		<td><a href="/demo/products?action=updateGet&id=${p.id }"><button>Edit</button></a></td>
		<td><a href="/demo/products?action=deleteProduct&id=${p.id }"><button>Delete</button></a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
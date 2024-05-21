<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style type="text/css">
	h1 {
		text-align: center;
	}
	
	.btn-primary {
		margin-bottom: 20px;
	}
	
	.container {
		width: 500px;
	}
</style>
</head>
<body>
<div class="container">
<h1>List Category</h1>
<a class="btn btn-primary" href="/demo/categories?action=createGet">Create new</a>
<a class="btn btn-primary" href="/demo/products">List product</a>
<table class="table table-striped">
	<tr>
		<th>STT</th>
		<th>Name</th>
		<th colspan="2">Action</th>
	</tr>
	<c:forEach items="${categories}" var="c" varStatus="cs">
	<tr>
		<td>${cs.count }</td>
		<td>${c.name }</td>
		<td><a class="btn btn-warning" href="/demo/categories?action=updateGet&id=${c.id }">Edit</a></td>
		<td><a class="btn btn-danger" href="/demo/products?action=deleteCategory&cId=${c.id }">Delete</a></td>
	</tr>
	</c:forEach>
</table>
</div>
</body>
</html>
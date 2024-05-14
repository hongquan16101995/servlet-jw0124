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
	#update {
		width: 500px;
		margin: auto;
	}
	
	h2 {
		text-align: center;
	}
</style>
</head>
<body>
<div id="update">
<h2>Update form</h2>
<form action="/demo/products?action=updatePost" method="post">
<div class="mb-3" hidden>
  <label for="id" class="form-label">Id</label>
  <input type="text" class="form-control" id="id" name="id" value="${product.id }" >
</div>
<div class="mb-3">
  <label for="name" class="form-label">Name</label>
  <input type="text" class="form-control" id="name" name="name" value="${product.name }">
</div>
<div class="mb-3">
  <label for="price" class="form-label">Price</label>
  <input type="number" class="form-control" id="price" name="price" value="${product.price }" >
</div>
<div class="mb-3">
  <label for="quantity" class="form-label">Quantity</label>
  <input type="number" class="form-control" id="quantity" name="quantity" value="${product.quantity }">
</div>
<div class="mb-3">
  <label for="image" class="form-label">Image</label>
  <input type="text" class="form-control" id="image" name="image" value="${product.image }" >
</div>
<div class="mb-3">
  <label for="category" class="form-label">Category</label>
<select class="form-select" aria-label="Default select example" id="category" name="cId">
  <option selected>Open this select menu</option>
  <c:forEach items="${categories }" var="c">
			<option value = "${c.id }">${c.name }</option>
		</c:forEach>
</select>
</div>
<button class="btn btn-primary" type="submit">Update</button>
<a href="/demo/products" class="btn btn-secondary" >Back</a>	
</form>
</div>
</body>
</html>
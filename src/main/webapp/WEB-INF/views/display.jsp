<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div>
				<img alt="product"
					src='<c:url value ="/resources/images/about/1.jpg"/>'>
			</div>
			<div class="col-md-8 center">
				<div class="col-md-3">
					<h1>${product.name}</h1>
				</div>
				<!-- Product ID -->
				<div class="col-md-2">
					<h1>${product.id}</h1>
				</div>
				<!-- Product Price -->
				<div class="col-md-2">
					<h1>${product.price}</h1>
				</div>
				<!-- Product Description -->
				<div class="col-md-2">
					<h1>${product.description}</h1>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>
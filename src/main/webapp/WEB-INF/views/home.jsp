<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Notes</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

<!-- Fonts -->
<!-- Lato -->
<link href='http://fonts.googleapis.com/css?family=Lato:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<!-- CSS -->

<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/font-awesome.min.css"/> ">
<link rel="stylesheet"
	href="<c:url value="/resources/css/owl.carousel.css"/> ">
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.css"/> ">
<link rel="stylesheet" href="<c:url value="resources/css/main.css"/> ">
<!-- Responsive Stylesheet -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/responsive.css"/>">
</head>

<body id="body">

	<div id="preloader">
		<div class="book">
			<div class="book__page"></div>
			<div class="book__page"></div>
			<div class="book__page"></div>
		</div>
	</div>

	<!-- 
	    Header start
	    ==================== -->
	<div class="navbar-default navbar-fixed-top" id="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img class="logo-1"
					src="<c:url value="/resources/images/logo.png"/>" alt="LOGO" /> <img
					class="logo-2" src="<c:url value="/resources/images/logo-2.png"/>"
					alt="LOGO" />
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<nav class="collapse navbar-collapse" id="navbar">
				<ul class="nav navbar-nav navbar-right" id="top-nav">
					<li class="current"><a href="#body">Home</a></li>
					<li><a href="#products">Products</a></li>
					<li><a href="#store">Store</a></li>
					<li><a href="#searchProduct">Search</a></li>
					<li><a href="#addproduct">Add Product</a></li>
				</ul>
			</nav>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</div>

	<section id="hero-area">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="block">
						<h1 class="wow fadeInDown">A passionate web company</h1>
						<p class="wow fadeInDown" data-wow-delay="0.3s">Lorem ipsum
							dolor sit amet, consectetur adipisicing elit, sed do eiusmod
							tempor incididunt ut labore et dolore magna</p>
						<div class="wow fadeInDown" data-wow-delay="0.3s">
							<a class="btn btn-default btn-home" href="#about" role="button">Get
								Started</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 wow zoomIn">
					<div class="block">
						<div class="counter text-center">
							<ul id="countdown_dashboard">
								<li>
									<div class="dash days_dash">
										<div class="digit">0</div>
										<div class="digit">0</div>
										<div class="digit">0</div>
										<span class="dash_title">Days</span>
									</div>
								</li>
								<li>
									<div class="dash hours_dash">
										<div class="digit">0</div>
										<div class="digit">0</div>
										<span class="dash_title">Hours</span>
									</div>
								</li>
								<li>
									<div class="dash minutes_dash">
										<div class="digit">0</div>
										<div class="digit">0</div>
										<span class="dash_title">Minutes</span>
									</div>
								</li>
								<li>
									<div class="dash seconds_dash">
										<div class="digit">0</div>
										<div class="digit">0</div>
										<span class="dash_title">Seconds</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- .row close -->
		</div>
		<!-- .container close -->
	</section>
	<!-- header close -->



	<!-- 
        About start
        ==================== -->
	<section id="products" class="section">
		<div class="container">
			<div class="row">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Serial Number</th>
							<th>Price</th>
							<th>Description</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="product" items="${products}">
							<tr>
								<td>${product.name}</td>
								<td>${product.id}</td>
								<td>${product.price}</td>
								<td>${product.description}</td>
								<td><a href="app?id=${product.id}" class="btn btn-info">Details</a>
									<form action="delete" method="post" style="display:inline;">
									 	<input type="hidden" name="id" value="${product.id}" />
										<button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this product?');">Delete</button>
									</form></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</section>
	<!-- #about close -->
	<!-- 
        About start
        ==================== -->

	<!-- 
        Service start
        ==================== -->
	<section id="store" class="section">
		<div class="container">
			<div class="row">
				<div class="heading wow fadeInUp">
					<h2>Our Store</h2>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
						eiusmod tempor incididunt ut labore et <br> dolore magna
						aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
						laboris nisi ut aliquip ex
					</p>
				</div>
				<div class="col-sm-6 col-md-3 wow fadeInLeft">
					<div class="service">
						<div class="icon-box">
							<span class="icon"> <i class="ion-android-desktop"></i>
							</span>
						</div>
						<div class="caption">
							<h3>Fully Responsive</h3>
							<p>Lorem ipsum dolor sit amet, con-sectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 wow fadeInLeft" data-wow-delay="0.3s">
					<div class="service">
						<div class="icon-box">
							<span class="icon"> <i class="ion-speedometer"></i>
							</span>
						</div>
						<div class="caption">
							<h3>Speed Optimized</h3>
							<p>Lorem ipsum dolor sit amet, con-sectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 wow fadeInLeft" data-wow-delay="0.6s">
					<div class="service">
						<div class="icon-box">
							<span class="icon"> <i class="ion-ios-infinite-outline"></i>
							</span>
						</div>
						<div class="caption">
							<h3>Tons of Feature</h3>
							<p>Lorem ipsum dolor sit amet, con-sectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 wow fadeInLeft" data-wow-delay="0.9s">
					<div class="service">
						<div class="icon-box">
							<span class="icon"> <i class="ion-ios-cloud-outline"></i>
							</span>
						</div>
						<div class="caption">
							<h3>Cloud Option</h3>
							<p>Lorem ipsum dolor sit amet, con-sectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .container close -->
	</section>
	<!-- #service close -->

	<section id="call-to-action" class="section">
		<section id="searchProduct" class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12 wow text-center">
						<div class="block">
							<h2>Lorem ipsum dolor sit amet, consectetur adipisicing</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod</p>
							<form action="display" method="post">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter Product serial Number" name="id">
									<button class="btn btn-default btn-submit" type="submit">
										Search</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
	<!-- #call-to-action close -->

	<!-- 
        Contact start
        ==================== -->
	<section id="addproduct" class="section">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="block">
						<div class="heading wow fadeInUp">
							<h2>Product Store</h2>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
								eiusmod tempor incididunt ut labore et <br> dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex
							</p>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-5 wow fadeInUp">
					<div class="block text-left">
						<div class="sub-heading">
							<h4>Contact Address</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Amet quos maxime voluptate doloribus, voluptatum nemo vel ipsa
								in eligendi, ullam. Ducimus consequuntur labore error hic.</p>
						</div>
						<address class="address">
							<hr>
							<p>
								Amaravathi 32,<br> AP,<br> India
							</p>
							<hr>
							<p>
								<strong>E:</strong>&nbsp;hello@foundry.net<br> <strong>P:</strong>&nbsp;+91
								6578473282
							</p>


						</address>
					</div>
				</div>

				<div
					class="col-xs-12 col-sm-12 col-md-5 col-md-offset-1 wow fadeInUp"
					data-wow-delay="0.3s">
					<div class="form-group">
						<form action="app#products" method="post" id="contactform">
							<div class="input-field">
								<input type="text" class="form-control"
									placeholder="Product Name" name="name">
							</div>
							<div class="input-field">
								<input type="text" class="form-control"
									placeholder="Product Price" name="price">
							</div>
							<div class="input-field">
								<textarea class="form-control" placeholder="Product Description"
									rows="3" name="description"></textarea>
							</div>
							<button class="btn btn-send" type="submit">Add Product
								to Store</button>
						</form>

						<div id="success">
							<p>Your Product added successfully</p>
						</div>
						<div id="error">
							<p>Your Product not added Error!!</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section clas="wow fadeInUp">
		<div class="map-wrapper"></div>
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<p>
							Copyright &copy; <a href="http://www.Themefisher.com">Themefisher</a>|
							All right reserved.
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<!-- Js -->
	<script
		src="<c:url value="/resources/js/vendor/modernizr-2.6.2.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/vendor/jquery-1.10.2.min.js"/>"></script>
	<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<script src="<c:url value="/resources/js/jquery.lwtCountdown-1.0.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.validate.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.form.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.nav.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.sticky.js"/>"></script>
	<script src="<c:url value="/resources/js/plugins.js"/>"></script>
	<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>

</body>
</html>

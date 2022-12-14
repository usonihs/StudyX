<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<title>ProductList</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/product/">


<script type="text/javascript">
	function login() {
		var form = document.loginbtn;
		form.action = "login.jsp";
		form.submit();
	}

	function logout() {
		var form = document.loginokay;
		form.action = "main.jsp?id=null";
		form.submit();
	}
</script>


<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.2/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg"
	color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}
</style>


<!-- Custom styles for this template -->
<link href="product.css" rel="stylesheet">
</head>
<body>

	<%@include file="header.jsp"%>

	<header class="site-header sticky-top py-1">
		<nav
			class="container d-flex flex-column flex-md-row justify-content-between">
			<a class="py-2" href="#" aria-label="Product"> <svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					fill="none" stroke="currentColor" stroke-linecap="round"
					stroke-linejoin="round" stroke-width="2" class="d-block mx-auto"
					role="img" viewBox="0 0 24 24">
					<title>Product</title><circle cx="12" cy="12" r="10" />
					<path
						d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94" /></svg>
			</a> <a class="py-2 d-none d-md-inline-block" href="#">Tour</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Product</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Features</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Enterprise</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Support</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Pricing</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Cart</a>
		</nav>
	</header>

	<main>
	
			<div class="row">
			
				<div class="col">
					<div class="card" style="width: 14rem;">
					<a href="customerProductList.do">
						<img src="./productListImage/practice.png" class="card-img-top"
							alt="???????????????">
					</a>
						<div class="card-body">
							<p class="card-text" align="center">???????????????</p>
						</div>
					</div>
				</div>
				
			<c:forEach items="${brandList}" var="dto">
				<div class="col">
					<div class="card" style="width: 14rem;">
					<a href="customerProductList.do?query=productbrand&content=${dto.productbrand}">
						<img src="./productListImage/practice.png" class="card-img-top"
							alt="${dto.productbrand}" name="${dto.productbrand}">
					</a>
						<div class="card-body">
							<p class="card-text" align="center">${dto.productbrand}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</main>


	<footer class="container py-5">
		<div class="row">
			<div class="col-12 col-md">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					fill="none" stroke="currentColor" stroke-linecap="round"
					stroke-linejoin="round" stroke-width="2" class="d-block mb-2"
					role="img" viewBox="0 0 24 24">
					<title>Product</title><circle cx="12" cy="12" r="10" />
					<path
						d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94" /></svg>
				<small class="d-block mb-3 text-muted">&copy; 2017???2022</small>
			</div>
			<div class="col-6 col-md">
				<h5>Features</h5>
				<ul class="list-unstyled text-small">
					<li><a class="link-secondary" href="#">Cool stuff</a></li>
					<li><a class="link-secondary" href="#">Random feature</a></li>
					<li><a class="link-secondary" href="#">Team feature</a></li>
					<li><a class="link-secondary" href="#">Stuff for
							developers</a></li>
					<li><a class="link-secondary" href="#">Another one</a></li>
					<li><a class="link-secondary" href="#">Last time</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>Resources</h5>
				<ul class="list-unstyled text-small">
					<li><a class="link-secondary" href="#">Resource name</a></li>
					<li><a class="link-secondary" href="#">Resource</a></li>
					<li><a class="link-secondary" href="#">Another resource</a></li>
					<li><a class="link-secondary" href="#">Final resource</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>Resources</h5>
				<ul class="list-unstyled text-small">
					<li><a class="link-secondary" href="#">Business</a></li>
					<li><a class="link-secondary" href="#">Education</a></li>
					<li><a class="link-secondary" href="#">Government</a></li>
					<li><a class="link-secondary" href="#">Gaming</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>About</h5>
				<ul class="list-unstyled text-small">
					<li><a class="link-secondary" href="#">Team</a></li>
					<li><a class="link-secondary" href="#">Locations</a></li>
					<li><a class="link-secondary" href="#">Privacy</a></li>
					<li><a class="link-secondary" href="#">Terms</a></li>
				</ul>
			</div>
		</div>
	</footer>


	<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>


</body>
</html>

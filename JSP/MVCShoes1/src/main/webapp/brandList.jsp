<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>practiceBrandList</title>
</head>
<body>

	<main>
	
		<div class="row">
			
				<div class="col">
					<div class="card" style="width: 14rem;">
					<a href="productList.do">
						<img src="./productListImage/practice.png" class="card-img-top"
							alt="전체브랜드">
					</a>
						<div class="card-body">
							<p class="card-text" align="center">전체브랜드</p>
						</div>
					</div>
				</div>
				
			<c:forEach items="${brandList}" var="dto">
				<div class="col">
					<div class="card" style="width: 14rem;">
					<a href="productList.do?query=${dto.productbrand}">
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

</body>
</html>
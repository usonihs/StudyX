<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<style type="text/css">
</style>
<meta charset="UTF-8">
<title>practiceProductList</title>
</head>
<body>

<form action="productList.do">
		검색 선택 : 
			<select name="query">
				<option value="productmodel" selected="selected">productmodel1</option>
				<option value="productbrand">productbrand1</option>
			</select>&nbsp;&nbsp;&nbsp;
			<input type="text" name="content" size="30">
			<input type="submit" value="검색">
	</form>
	
	<br>
	
	<table>
		<tr>
		<c:forEach items="${categoryList}" var="dto">
			<td>${dto.productcategory}&nbsp;&nbsp;&nbsp;</td>
		</c:forEach>
		</tr>
	</table>

	<main>
	
		<div class="row">
			
			<c:forEach items="${productList}" var="dto">
				<div class="col">
					<div class="card" style="width: 14rem;">
					<a href="productDetail.do?productmodel=${dto.productmodel}">
						<img src="practice.png" class="card-img-top"
							alt="${dto.productmodel}">
					</a>
						<div class="card-body">
							<p class="card-text" align="center">${dto.productbrand} ${dto.productmodel}</p>
							<p class="card-text" align="center">${dto.productprice}</p>
							<p class="card-text" align="center">${dto.productcategory}</p>
						</div>
					</div>
				</div>
			</c:forEach>
			
		</div>

	</main>

</body>
</html>
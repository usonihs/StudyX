<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel= "stylesheet" href="signup.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<%@include file="header.jsp"%>
<body >


<div class="divPosition">
<h3 align="center" >ID 찾기</h3>
<div id="wrap" >

<script type="text/javascript">
	function FindId() {
		var ret = window.open("FindID.jsp", "ID", "width=500,height=600,toolbar=no,left=50,top=50");
		
	}
	
	// window 창을 띄워서 찾은 아이디를 보여준다.
</script>

<form action="customerfindid.do" method="post">
		<table border="0" align="center" >
		<tr>
			<td>이름:</td>
			<td> <input type="text" name="customername" ><br>
			</td>
		</tr>
		<tr>
			<td>전화번호: </td>
			<td><input type="text" name="customerphone"><br>
			</td>
		</tr>
		<tr>
			<td>
		<button type="button" name="bt" >
	 	<a href="http://localhost:8080/All100Shoes/Customer/login.jsp">login이동</a>
		 </button>	</td><td>
		<input type="submit" value="아이디확인" onclick= "FindId()"  >
			</td>
		</tr>
</table>
</form>
</div>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
   /* background-color: #ffd7ff; */
   height: 100vh;
   width: 100vw;
   background-image: url("https://wallpaperaccess.com/full/187719.jpg");
   background-repeat : no-repeat;
   background-size : cover;
}
div {
   margin : 10px;
}
</style>
<meta charset="UTF-8">
<title>One Line 게시판</title>
</head>
<body>
<div align="center">
	<h1>One Line 게시판</h1>
	<table border="1">
		<tr>
			<th>번호</th><th>이름</th><th>제목</th><th>날짜</th><th>삭제</th>
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.olSeq}</td>
				<td>${dto.olName}</td>
				<td>${dto.olTitle}</td>
				<td>${dto.olDate}</td>
				<td><a href="delete.do?olSeq=${dto.olSeq}">X</a></td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan="5"><a href="write_view.do">글작성</a></td>
			</tr>
	</table>
</div>
</body>
</html>
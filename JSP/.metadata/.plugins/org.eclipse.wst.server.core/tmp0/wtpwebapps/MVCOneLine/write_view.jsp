<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
   background-color: #ffd7ff;
}
div {
   margin : 10px;
}
</style>
<meta charset="UTF-8">
<title>글작성</title>
</head>
<body>
<div align="center">
	<h2>글작성</h2>
	<form action="write.do" method="post">
		<table border="0">
			<tr>
				<td>이름</td>
				<td><input type="text" name="olName" size="20"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="olTitle" size="20"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력">&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
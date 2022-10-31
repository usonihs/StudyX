<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
   /* background-size: 900px; */
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
				<td><input type="text" name="bName" size="20"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="20"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="bContent" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력">&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a></td>
				
			</tr>
		
		</table>
	</form>
</div>
</body>
</html>
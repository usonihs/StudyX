<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<h3>ID 입력 후 확인 버튼을 누르세요.</h3>

<form action="updateTest06.jsp" method="post">

ID : <input type="text" name="userid" size="10">
<input type="submit" value="OK">

</form>

</body>
</html>
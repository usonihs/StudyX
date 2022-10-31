<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
%>

Name : ${NAME} <br>
Phone : ${PHONE} <br>
Address : ${ADDRESS} <br>
Email : ${EMAIL} <br>
Relation : ${RELATION} <br><br>
상기의 정보로 입력되었습니다. 감사합니다. <br>
<button type="button" onclick="location.href='http://localhost:8080/CRUD/AddressBook_01.jsp'">홈</button>

</body>
</html>
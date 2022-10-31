<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>입력에 성공 했습니다.</h3>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>

	<p>아이디 : <%=id %>
	<p>패스워드 : <%=pw %>
	<p>이름 : <%=name %>
	<p>전화번호 : <%=request.getParameter("phone1") + "-" + request.getParameter("phone2") + "-" + request.getParameter("phone3") %>
	<p>이메일 : <%=email %>
</body>
</html>
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
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
%>
	<%
	if (request.getParameter("method").equals("add")) {
		out.println("두 수의 덧셈값은 " + (num1 + num2) + "입니다.");
	} else if (request.getParameter("method").equals("sub")) {
		out.println("두 수의 뺄셈값은 " + (num1 - num2) + "입니다.");
	} else if (request.getParameter("method").equals("mult")) {
		out.println("두 수의 곱셈값은 " + (num1 * num2) + "입니다.");
	} else if (request.getParameter("method").equals("div")) {
		out.println("두 수의 나눗셈값은 " + (num1 / num2) + "입니다.");
	}
	%>

</body>
</html>
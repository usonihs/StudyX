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
String msg = "";
double result = 0;
int rem = 0;
%>
	<%
	if (request.getParameter("method").equals("add")) {
		msg = "덧셈결과는 ";
		result = num1 + num2;
	} else if (request.getParameter("method").equals("sub")) {
		msg = "뺄셈결과는 ";
		result = num1 - num2;
	} else if (request.getParameter("method").equals("mult")) {
		msg = "곱셈결과는 ";
		result = num1 * num2;
	} else if (request.getParameter("method").equals("div")) {
		msg = "나눗셈결과는 ";
		result = (double)num1 / num2;
	}
	%>

	<%=msg + result%> 입니다.
</body>
</html>
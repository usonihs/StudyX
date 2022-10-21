<%@page import="java.util.Arrays"%>
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
	String msg2 = " 입니다. <br>";
	String[] aa = request.getParameterValues("method");
	%>

	<%
	for (int i = 0; i < aa.length; i++) {
		if (aa[i].equals("add")) {
			msg = "덧셈 결과는 ";
			result = num1 + num2;
			out.println(msg + result + msg2);
		}
		if (aa[i].equals("sub")) {
			msg = "뺄셈 결과는 ";
			result = num1 - num2;
			out.println(msg + result + msg2);
		}
		if (aa[i].equals("mult")) {
			msg = "곱셈 결과는 ";
			result = num1 * num2;
			out.println(msg + result + msg2);
		}

		if (aa[i].equals("div")) {
			msg = "나눗셈 결과는 ";
			result = (double)num1 / num2;
			out.println(msg + result + msg2);
		}
	}
	%>
</body>
</html>
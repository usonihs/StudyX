<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
</head>
<body>
	<h1>Addition</h1>
	<%
	int a = 30;
	int b = 20;
	int addition = a + b;
	int subtraction = a - b;
	int multiplication = a * b;
	int division = a/b;
	
	out.println(a + " + " + b + " = " + (a+b) + "<br>");
	out.println(a + " - " + b + " = " + subtraction + "<br>");
	%>
	
	<%=a %> + <%=b %> = <%=a + b %> <br>
	<%=a %> - <%=b %> = <%=subtraction %> <br>
	<%=a %> * <%=b %> = <%=multiplication %> <br>
	<%=a %> / <%=b %> = <%=division %> <br>
	
</body>
</html>
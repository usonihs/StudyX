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
	int i = 10;
	String str = "I have a dream.";
	
	out.println("i = " + i + "<br>");
	out.println("str = " + str + "<br>");
	out.println("sum = " + sum(12, 15) + "<br>");
%>

<%
for (i = 2; i <= 5; i++)
	out.print(i + " + " + " 1 " + " = " + sum(i, 1) + "<br>");
%>

<%!
	public int sum(int a, int b){
	return a + b;
}
%>

2 + 1 = <%=sum(2, 1) %> <br>
3 + 1 = <%=sum(3, 1) %> <br>
4 + 1 = <%=sum(4, 1) %> <br>
5 + 1 = <%=sum(5, 1) %> <br>

</body>
</html>
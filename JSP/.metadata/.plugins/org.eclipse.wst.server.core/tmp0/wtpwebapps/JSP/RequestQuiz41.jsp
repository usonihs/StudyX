<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="RequestQuiz42.jsp" method="get">
		계산을 위한 숫자를 입력하세요. <br> 숫자 1 : <select name="num1">
			<%
			for (int i = 1; i <= 100; i++) {
				out.println("<option>" + i + "</option>");
			}
			%>
		</select> <br> 숫자 2 : <select name="num2">
			<%
			for (int i = 1; i <= 100; i++) {
				out.println("<option>" + i + "</option>");
			}
			%>
		</select> <br> 계산방법 : <br>
		 	<input type="checkbox" name="method" value="add" checked="checked"> 덧셈 <br> 
			<input type="checkbox" name="method" value="sub"> 뺄셈 <br> 
			<input type="checkbox" name="method" value="mult"> 곱셈 <br> 
			<input type="checkbox" name="method" value="div"> 나눗셈 <br> 
			<input type="submit" value="계산">
	</form>

</body>
</html>
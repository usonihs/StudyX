<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="RequestQuiz22.jsp" method="get">
계산을 위한 숫자를 입력하세요. <br>
숫자 1 : <input type="text" name="num1"> <br>
숫자 2 : <input type="text" name="num2"> <br>
계산방법 : <br>
<input type="radio" name="method" value="add" checked="checked"> 덧셈 <br>
<input type="radio" name="method" value="sub"> 뺄셈 <br>
<input type="radio" name="method" value="mult"> 곱셈 <br>
<input type="radio" name="method" value="div"> 나눗셈 <br>
<input type="submit" value="계산">
</form>

</body>
</html>
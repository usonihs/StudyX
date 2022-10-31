<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>삭제할 고객정보 확인 후 버튼을 누르세요.</h4>

	<form name="Member" action="deleteTest04.jsp" method="post">
	NAME : <input type="text" name="name" size="10" value=<%=session.getAttribute("ONAME") %> readonly="readonly"> <br>
	TEL : <input type="text" name="tel" size="13" value=<%=session.getAttribute("OTEL") %> readonly="readonly" > <br>
	ADDRESS : <input type="text" name="address" size="20" value=<%=session.getAttribute("OADDRESS") %> readonly="readonly" > <br>
		<input type="submit" value="삭제">
	</form>
</body>
</html>
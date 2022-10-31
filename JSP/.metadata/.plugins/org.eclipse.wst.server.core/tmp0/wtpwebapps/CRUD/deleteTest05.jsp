<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>

<h3>삭제결과</h3>
ID : <%=session.getAttribute("USERID") %> <br>

삭제 되었습니다.
<%session.invalidate(); %>

</body>
</html>
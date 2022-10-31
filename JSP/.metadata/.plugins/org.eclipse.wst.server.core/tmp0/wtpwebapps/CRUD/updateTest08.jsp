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

<h3>수정결과</h3>
ID : <%=session.getAttribute("USERID") %> <br>
NAME : <%=session.getAttribute("NNAME") %> <br>
TEL : <%=session.getAttribute("NTEL") %> <br>
ADDRESS : <%=session.getAttribute("NADDRESS") %> <br>

상기의 정보로 수정되었습니다.
<%session.invalidate(); %>

</body>
</html>
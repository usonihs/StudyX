<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
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
	request.setCharacterEncoding("utf-8");
	String quantity = request.getParameter("quantity");
	String size = request.getParameter("size");
	String color = request.getParameter("color");

	Date date = new Date();
	Long time = date.getTime();
	String fileName = time + ".txt";
	String result;
	PrintWriter writer = null;

	try {
		String filePath = application.getRealPath(fileName);
		writer = new PrintWriter(filePath);
		writer.println("수량 : " + quantity);
		writer.println("크기 : " + size);
		writer.println("색상 : " + color);
		result = "success";
	} catch (IOException ioe) {
		result = "fail";
	} finally {
		try {
			writer.close();
		} catch (Exception e) {

		}
	}
	
	response.sendRedirect("http://localhost:8080/JSP/Cart_03.jsp?result=" + result);
	%>
	
	<input type="hidden" name="quantity" value=<%=quantity %>>
	<input type="hidden" name="size" value=<%=size %>>
	<input type="hidden" name="color" value=<%=color %>>

</body>
</html>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 저장 결과</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	String fileName = "File.txt";
	
	PrintWriter writer = null;
	
	try{
		String filePath = application.getRealPath(fileName);
		
		writer = new PrintWriter(filePath);
		
		writer.println("제목 : " + title);
		writer.println("글쓴이 : " + name);
		writer.println(content);
		
		out.println("저장 되었습니다.");
	}catch(IOException ioe){
		out.println("파일에 데이터를 쓸 수 없습니다.");
	}finally{
		try{
			writer.close();
		}catch(Exception e){
			
		}
	}
%>

</body>
</html>
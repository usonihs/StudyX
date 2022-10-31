<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 수정</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
	<%
		String userid = request.getParameter("userid");
		String name = null;
		String tel = null;
		String address = null;
		
		String url_mysql = "jdbc:mysql://localhost:3306/wtest?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		String query = "select name, tel, address from purchaserinfo where userid = '" + userid + "'";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			ResultSet rs = stmt_mysql.executeQuery(query);
			
			while(rs.next()){
				name = rs.getString(1);
				tel = rs.getString(2);
				address = rs.getString(3);
			}
			
			conn_mysql.close();
			
			session.setAttribute("USERID", userid);
			session.setAttribute("ONAME", name);
			session.setAttribute("OTEL", tel);
			session.setAttribute("OADDRESS", address);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	response.sendRedirect("deleteTest03.jsp");
	%>
	
</body>
</html>
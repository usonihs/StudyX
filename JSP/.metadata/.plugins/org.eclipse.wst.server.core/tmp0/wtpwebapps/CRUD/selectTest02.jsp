<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>고객명단 리스트</h3>
	
	<%	
		int cnt = 0;
		String url_mysql = "jdbc:mysql://localhost:3306/wtest?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		String query = "select userid, name, tel, address, insertdate from purchaserinfo order by insertdate";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			ResultSet rs = stmt_mysql.executeQuery(query);
			
			%>
			<table border="1">
			<tr>
				<th>ID</th><th>NAME</th><th>TEL</th><th>ADDRESS</th><th>INSERTDATE</th>
			</tr>
			
			<%
			while(rs.next()){
			%>
			
			<tr>
				<td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td><td><%=rs.getString(5) %></td>
			</tr>
			
			<%
				cnt++;
			}
			%>
			</table>
			<%
			conn_mysql.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}

	%>
	<br>
	<br>
	총 인원은 <%=cnt %>명 입니다.

</body>
</html>
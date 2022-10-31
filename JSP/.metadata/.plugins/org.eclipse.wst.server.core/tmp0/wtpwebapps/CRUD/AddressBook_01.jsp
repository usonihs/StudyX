<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
/* get parameter */
String queryName = request.getParameter("query");
String queryContent = request.getParameter("content");

if(queryName == null){
	queryName = "name";
	queryContent = "";
}

/* Database 연결 */

int cnt = 0;
		String url_mysql = "jdbc:mysql://localhost:3306/wtest?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		String query = "select seq, name, phone, address, email, relation from addressbook ";
		String query2 = "where " + queryName + " like '%" + queryContent + "%'";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			ResultSet rs = stmt_mysql.executeQuery(query+query2);

%>
<body>
<h3>고객명단 리스트</h3>
	<hr>
	<form action="AddressBook_01.jsp">
		검색 선택 : 
			<select name="query">
				<option value="name" selected="selected">이름</option>
				<option value="phone">전화번호</option>
				<option value="address">주소</option>
				<option value="relation">관계</option>
			</select>&nbsp;&nbsp;&nbsp;
			<input type="text" name="content" size="30">
			<input type="submit" value="검색">
	
	</form>
	
			<table border="1">
			<tr>
				<th>SEQ</th><th>NAME</th><th>PHONE</th><th>ADDRESS</th><th>EMAIL</th><th>RELATION</th>
			</tr>
			
			<%
			while(rs.next()){
			%>
			
			<tr>
				<td align="center"><a href="AddressBook_05.jsp?seq=<%=rs.getInt(1)%>"><%=rs.getInt(1) %></a></td>
				<td align="center"><%=rs.getString(2) %></td><td align="center"><%=rs.getString(3) %></td>
				<td align="center"><%=rs.getString(4) %></td><td align="center"><%=rs.getString(5) %></td>
				<td align="center"><%=rs.getString(6) %></td>
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
	<form action="">
	<input type = "submit" value = "입력" onclick = "javascript: form.action='AddressBook_02.jsp'">
	</form>
	<hr>
	<br>
	총 인원은 <%=cnt %>명 입니다.
</body>
</html>
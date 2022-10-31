<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 수정</title>
</head>
<script type="text/javascript">
function checkMember(){
	
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/
	var regExpAddress = /^[ㄱ-ㅎ|가-힣|0-9]*$/
	var regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	
	var form = document.Member
	
	var phone = form.phone.value
	var address = form.address.value
	var email = form.email.value
	
	if(!regExpPhone.test(phone)){
		alert("연락처 입력을 확인해 주세요")
		form.phone.select()
		return
	}
	
	if(!regExpAddress.test(address)){
		alert("주소 입력은 한글과 숫자만 입력해 주세요")
		form.address.select()
		return
	}
	
	if(!regExpEmail.test(email)){
		alert("이메일 입력을 확인해 주세요")
		form.email.select()
		return
	}

	form.submit()
}
</script>
<body>
<%request.setCharacterEncoding("utf-8"); %>

	<h4>수정 후 확인 버튼을 누르세요.</h4>
	<%
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String relation = request.getParameter("relation");
		
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
				phone = rs.getString(2);
				address = rs.getString(3);
			}
			
			conn_mysql.close();
			
			session.setAttribute("USERID", userid);
			session.setAttribute("NAME", name);
			session.setAttribute("PHONE", phone);
			session.setAttribute("ADDRESS", address);
			
		}catch(Exception e){
			e.printStackTrace();
		}
			
	%>
	
	<h4>삭제할 고객정보 확인 후 버튼을 누르세요.</h4>

	<form name="Member" action="purchaserSelect_03.jsp" method="post">
	NAME : <input type="text" name="name" size="10" value=<%=name %> > <br>
	PHONE : <input type="text" name="tel" size="13" value=<%=phone %> > <br>
	ADDRESS : <input type="text" name="address" size="20" value=<%=address %> > <br>
	EMAIL : <input type="text" name="email" size="20" value=<%=email %> > <br>
	RELATION : <input type="text" name="relation" size="20" value=<%=relation %> > <br>
		<input type = "submit" value = "수정" onclick = "javascript: form.action='purchaserSelect_03.jsp'">
      <input type = "submit" value = "삭제" onclick = "javascript: form.action='purchaserSelect_04.jsp'">
	</form>
</body>
</html>
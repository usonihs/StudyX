<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<script type="text/javascript">

		function checkForm(){
			alert("아이디 :" + document.loginForm.id.value + "\n" + 
					"비밀번호 :" + document.loginForm.pw.value)
		}

	</script>
<body>

	<form name="loginForm">
		<p>아이디 : <input type="text" name="id">
		<p>패스워드 : <input type="password" name="pw">
		<p><input type="button" value="OK" onclick="checkForm()">
	</form>

</body>
</html>
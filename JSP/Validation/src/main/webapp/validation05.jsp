<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<script type="text/javascript">
	
		function checkMember(){
			
			var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
			var regExpPw = /^[0-9]*$/
			var regExpName = /^[가-힣]*$/
			var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/
			var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i
			
			var form = document.Member
			
			var id = form.id.value
			var pw = form.pw.value
			var name = form.name.value
			var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value
			var email = form.email.value
			
			if (!regExpId.test(id)) {
				alert("아이디는 문자로 시작해 주세요.")
				form.id.select()
				return
			}
			
			if (!regExpName.test(name)) {
				alert("이름은 한글만 입력해 주세요.")
				form.name.select()
				return
			}
			
			if (!regExpPw.test(pw)) {
				alert("비밀번호는 숫자만 입력해 주세요.")
				form.pw.select()
				return
			}
			
			if (!regExpPhone.test(phone)) {
				alert("연락처 입력을 확인해 주세요.")
				form.phone.select()
				return
			}
			
			if (!regExpEmail.test(email)) {
				alert("이메일 입력을 확인해 주세요.")
				form.email.select()
				return
			}
			
			
			for(i = 0; i<form.id.value.length; i++){
				var ch = form.id.value.charAt(i)
				if ((ch < 'a' || ch > 'z') && (ch > 'A' || ch < 'Z') && (ch > '0' || ch < '9')) {
					alert("아이디는 영문 소문자만 입력 가능합니다.")
					form.id.select()
					return
				}
			}
			
			if (form.pw.value.length < 4) {
				alert("패스워드는 4자 이상으로 입력해야 합니다.")
				form.pw.select();
				return
			}
			
			for(i = 0; i<form.pw.value.length; i++){
				var ch = form.pw.value.charAt(i)
				if ((ch > 'a' || ch < 'z') && (ch > 'A' || ch < 'Z') && (ch < '0' || ch > '9')) {
					alert("패스워드는 숫자만 입력 가능합니다.")
					form.pw.select()
					return
				}
			}
			
			form.submit();
		}
	
	</script>
<body>
	<h3>회원가입</h3>
	<form name="Member" action="validation05_Process.jsp" method="post">
	
		<p>아이디 : <input type="text" name="id">
		<p>패스워드 : <input type="password" name="pw">
		<p>이름 : <input type="text" name="name">
		<p>연락처 :
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			-
			<input type="text" maxlength="4" name="phone2">
			-
			<input type="text" maxlength="4" name="phone3">
		<p>이메일 : <input type="text" name="email">
		<p><input type="button" value="OK" onclick="checkMember()">
	
	</form>
</body>
</html>
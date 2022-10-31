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
		
		var regExpUserId = /^[a-z]*$/
		var regExpName = /^[가-힣]*$/
		var regExpTel = /^\d{3}-\d{3,4}-\d{4}$/
		var regExpAddress = /^[ㄱ-ㅎ|가-힣|0-9]*$/
		
		var form = document.Member
		
		var userid = form.userid.value
		var name = form.name.value
		var tel = form.tel1.value + "-" + form.tel2.value + "-" + form.tel3.value
		var address = form.address.value
		
		if(!regExpUserId.test(userid)){
			alert("아이디는 소문자 영어만 입력해 주세요.")
			form.userid.select()
			return
		}
		
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해 주세요")
			form.name.select()
			return
		}
		
		if(!regExpTel.test(tel)){
			alert("연락처 입력을 확인해 주세요")
			form.tel2.select()
			return
		}
		
		if(!regExpAddress.test(address)){
			alert("주소 입력은 한글과 숫자만 입력해 주세요")
			form.address.select()
			return
		}

		form.submit()
	}
</script>
<body>

	<h3>아래의 항목을 입력 후 확인 버튼을 누르세요</h3>
	<form name="Member" action="insertTest05.jsp" method="post">
		ID : <input type="text" name="userid" size="10"> <br>
		성명 : <input type="text" name="name" size="10"> <br> 
		전화번호 : <select name="tel1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			-
			<input type="text" maxlength="4" size="4" name="tel2">
			-
			<input type="text" maxlength="4" size="4" name="tel3"><br>
		
		주소 : <input type="text" name="address" size="20"> <br>
		<input type="button" value="확인" onclick="checkMember()">
	</form>

</body>
</html>
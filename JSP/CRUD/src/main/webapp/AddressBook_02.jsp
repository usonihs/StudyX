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

	<h3>아래의 항목을 입력 후 확인 버튼을 누르세요</h3>
	<form name="Member" action="AddressBook_03.jsp" method="post">
		Name : <input type="text" name="name" size="10"> <br> 
		Phone : <input type="text" name="phone"><br>
		Address : <input type="text" name="address" size="20"> <br>
		Email : <input type="text" name="email" size="20"> <br>
		Relation : <input type="text" name="relation" size="20"> <br>
		<input type="button" value="확인" onclick="checkMember()">
	</form>

</body>
</html>
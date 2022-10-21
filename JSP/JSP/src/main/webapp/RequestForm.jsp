<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 입력</title>
</head>
<body>

<table border="0">
<form action="requestParameter.jsp" method="get">
		<tr>
		<td>
		이름 :
		</td>
		<td>
		 <input type="text" name="name" size="10"><br>
		</td>
		</tr>
		
		<tr>
		<td>
		아이디 :
		</td>
		<td>
		 <input type="text" name="id" size="10"><br>
		</td>
		</tr>
		
		<tr>
		<td>
		패스워드 :
		</td>
		<td>
		 <input type="password" name="pw" size="10"><br>
		</td>
		</tr>
		 
		
		<tr>
		<td>
		사용언어 :
		</td>
		<td>
		<input type="checkbox" name="hobby" value="독서" checked="checked"> 독서
		<input type="checkbox" name="hobby" value="요리"> 요리
		<input type="checkbox" name="hobby" value="조깅"> 조깅
		<input type="checkbox" name="hobby" value="수영"> 수영 <br>
		</td>
		</tr>
		
		<tr>
		<td>
		전공 : 
		</td>
		<td>
		<input type="radio" name="major" Value="국어" checked="checked"> 국어
		<input type="radio" name="major" Value="영어"> 영어
		<input type="radio" name="major" Value="디자인"> 디자인 <br>
		</td>
		</tr>
		
		<tr>
		<td>
		Protocol : 
		</td>
		<td>
		<select name="protocol">
		<option value="http">http</option>
		<option value="ftp">ftp</option>
		<option value="smtp" selected="selected">smtp</option>
		<option value="pop">pop</option>
		</select>
		</td>
		</tr>
		
				
		<tr>
		<td>
		<input type="submit" name="sendBtn" value="전송">
		</td>
		<td>
		<input type="reset" name="cancelBtn" value="취소">
		</td>
		</tr>
	</form>
</table>

</body>
</html>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int height = Integer.parseInt(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	double bmi = (double)weight / (double)((height*0.01)*(height*0.01));
	String strBmi = String.format("%.2f", bmi);
	String bb = "";
	%>
	
	<% 
	if(bmi >= 30){
		bb = "고도비만";
	}else if(bmi >= 25 && bmi <= 29.9){
		bb = "비만";
	}else if(bmi >= 23 && bmi <= 24.9){
		bb = "과체중";
	}else if(bmi >= 18.5 && bmi <= 22.9){
		bb = "정상체중";
	}else if(bmi >= 0 && bmi <= 18.4){
		bb = "저체중";
	}
	%>
	
	입력한 키는 <%=height %> 이고 <br>
	입력한 몸무게는 <%=weight %> 이므로 <br>
	당신의 BMI지수는 <%=strBmi %> 이며 <br>
	결과는 <%=bb %> 입니다. <br>
	
	<p>
		<img alt="Pig" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTAxMDFfMTM0%2FMDAxNTQ2MjcxMDMwNzgz.Ijw-F0Ar6xFbsnXweD9YcH_PhI80oOyMdNbja94FGaQg.xGOTkrddr9b4HtRSQl9cO1x-7HTsR3TZeHr4a8_7U-gg.PNG.sopride%2F16.png&type=sc960_832"
		 width="150">
	</p>
</body>
</html>
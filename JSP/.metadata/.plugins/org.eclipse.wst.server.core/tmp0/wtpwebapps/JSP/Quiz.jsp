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
for(int i = 1; i < 10; i++) {
	out.println(2 + " * " + i + " = " + 2 * i + "<br>");
	out.println("=========" + "<br>");
}
%>

<%
int sum = 0;
for (int i = 1; i <= 100; i++){
	sum += i;
}
	out.println("1 + 2 + 3 + ...... + 99 + 100 = " + sum + "<br>");
	out.println("1부터 100까지의 합 = " + sum + "<br>");
	for (int i = 101; i <=200; i++){
		sum += i;
	}
%>
1부터 200까지의 합 = <%= sum %> <br>
	
	
<%! public int square(int a){
	int set = 1;
	int result = a * set;
	return result;
}
	%>
	
	2 ^ 1 = <%=square(2) %> <br>
	2 ^ 2 = <%=square(2) * 2 %> <br>
	2 ^ 3 = <%=square(2) * 2 * 2 %> <br>
	2 ^ 4 = <%=square(2) * 2 * 2 *2 %> <br>
	2 ^ 5 = <%=square(2) * 2 * 2 *2  *2 %> <br>
	
	<%! public int square2(int num, int times){
		int result = 1;
		for(int i = 1; i <= times; i++){
			result *= num;
		}
		return result;
	}
		%>
		
		2 ^ 7 = <%=square2(2,7) %> <br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>쿠키 목록</title>
</head>
<body>
	<h2>쿠키 목록</h2>
	<!-- 생성된 쿠키는 배열에 담겨있다. 하나가 아니기 때문!! -->
	<% 
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
	%>
		<!--         key        :         value           -->
		<%= cookie.getName() %> : <%= cookie.getValue() %><br>
	<%
		}
	%>
</body>
</html>
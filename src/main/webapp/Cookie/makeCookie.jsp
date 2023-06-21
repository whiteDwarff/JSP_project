<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cookieName = "id";
	Cookie cookie =  new Cookie(cookieName, "kangMh");
	// 쿠키의 유지시간 (60초 * 2)
	cookie.setMaxAge(60*2);
	// 생성된 쿠키를 response 객체에 추가 
	// response = 클라이언트에게 응답을 보내는 객체 
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <h2>쿠키를 생성하는 페이지</h2>
	<%= cookieName %> 쿠키가 생성되었습니다 <br>
	<form method="post" action="useCookie.jsp">
		<input type="submit" value="생성된 쿠키 확인">
	</form> 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	String cookieName ="id";
 
 // 쿠키 객체 생성 : key는 id, value는 자신의 이름
 Cookie cookie = new Cookie(cookieName, "Munho");
 
 // 쿠키 속성 설정, 2분간 유효함
 cookie.setMaxAge(60 * 2);
 
 // 쿠키를 클라이이언트에 전송
 response.addCookie(cookie);
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%= cookieName %>가 생성되었습니다. <br>
	
	<form action="cookie_02.jsp" method="post">
		<input type="submit" value="생성된 쿠키 확인">
	</form>
</body>
</html>
  <!-- 
  if(cookies != null) {
	  for(Cookie cookie : cookie) {
		  String id = cookie.getName();
		  String value = cookie.getvalue();
	  }
  } else {
	  
  }
 -->
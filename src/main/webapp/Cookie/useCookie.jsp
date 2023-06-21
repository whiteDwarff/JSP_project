<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	Cookie[] cookies  = request.getCookies();
 	if(cookies != null) {
 		for(Cookie cookie : cookies) {
 			if(cookie.getName().equals("id")) {
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키의 이름은 : <%= cookie.getName() %>
	쿠키의 값 : <%= cookie.getValue() %>
<% 	}
 			
   }
 }%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
%>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null) {
	response.sendRedirect("welcome.jsp");
} else {
	response.sendRedirect("join.jsp");
}

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<section>
	<form action="welcome.jsp" method="post">
		<h2>로그인</h2>
		<div class="wrap">
			<div class="info-wrap">
				<label for="id">아이디</label>
				<label for="password">비밀번호</label>
			<div class="input-wrap">
				<input id="id" type="text" name="id">
				<input id="password" type="text" name="password">
		<input id="submit-btn" type="submit" value="입력완료">
			</div>
		</div>
	</form>
</section>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.time.*"
    info="copyright by @Munho Kang"
    trimDirectiveWhitespaces = "true"
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>반가워요</h1>
	<hr>
	<p>오늘의 날짜 : <%= LocalDate.now() %></p>
	<p>지금의 시간 : <%= LocalTime.now() %></p>
	<p>작성자 : <%= getServletInfo() %>
</body>
</html>
<!--  
	# trimDirectiveWhitespaces = "true"
		- <!DOCTYPE>위의 한칸의 공백을 없앤다.
 -->
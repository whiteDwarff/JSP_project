<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP test</title>
	<style type="text/css">
	
	</style>
</head>
<body>
	<% out.print("<h1>Hello JSP!!<h1>"); %>
	
	<%
		out.println("오늘 날짜 : " + LocalDate.now() + "<br>");
		out.println("현재 시간 : " + LocalTime.now());
	
	%>
	
	<script type="text/javascript">

	</script>
</body>
</html>
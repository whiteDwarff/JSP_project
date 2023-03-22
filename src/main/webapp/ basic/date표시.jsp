<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.time.*"
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP test</title>
	<style type="text/css">
	
	</style>
</head>
<body>	
	<%
		out.println("오늘 날짜 : " + LocalDate.now() + "<br>");
		out.println("<span style='color:red'>현재 시간 : " + LocalTime.now() + "</span>");
	%>
	<p style="background-color:cyan;">현재 날짜 : <%=LocalDate.now() %></p>
	
	<script type="text/javascript">

	</script>
</body>
</html>
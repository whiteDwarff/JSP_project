<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("utf-8");
 	String number = request.getParameter("number");
 	String name = request.getParameter("name");
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<form action="update_ok.jsp" method="post">
		 <input type="text" name="number" placeholder="Student Number" value="<%= number %>" readonly><br>
		 <input type="text" name="name" placeholder="Name" value="<%= name %>" readonly><br>
		 <input type="radio" name="grade" value="1"> 1학년 <br>
		 <input type="radio" name="grade" value="2"> 2학년<br>
		 <select name="subject">
		 	<option>C언어</option>
		 	<option>HTML / CSS</option>
		 	<option>데이터베이스</option>
		 	<option>자료구조</option>
		 	<option>JavaScript</option>
		 	<option>Vue.js</option>
		 </select><br>
		 <input type="submit" value="제출">
	</form>
</body>
</html>
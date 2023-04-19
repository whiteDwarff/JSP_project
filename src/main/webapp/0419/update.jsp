<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
 %>
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
		학번 : <input type="text" name="number" value="<%= number %>" readonly>
		이름 : <input type="text" name="name" value="<%= name %>" readonly>
		학년 : <input type="radio" name="grade" value="1"> 1학년
				  <input type="radio" name="grade" value="2"> 2학년
	  과목 : <select name="subject">
	  				<option>데이터베이스</option>
	  				<option>C</option>
	  				<option>HTML / CSS</option>
	  			</select>
	  			<input type="submit" value="제출">
	 </form>
	 
</body>
</html>
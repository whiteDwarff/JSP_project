<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<form action="insert_ok.jsp" method="post">
		학번 : <input type="text" name="number">
		이름 : <input type="text" name="name">
		학년 : <input type="radio" name="grade" value="1"> 1학년
				  <input type="radio" name="grade" value="2"> 2학년
	  과목 : <select name="subject">
	  				<option value="데이터베이스">데이터베이스</option>
	  				<option value="C">C</option>
	  				<option value="HTML / CSS">HTML / CSS</option>
	  			</select>
	  			<input type="submit" value="제출">
	 </form>
</body>
</html>
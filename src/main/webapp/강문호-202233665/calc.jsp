<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

	<form action="calcFinish.jsp" method="post">
		<label for="x">
				x: <input id="x"type="text" name="x">
		</label>
		<label for="y">
				y: <input id="y"type="text" name="y">
		</label>
		<div>
			<input type="submit" name="op" value="+">
			<input type="submit" name="op" value="-">
			<input type="submit" name="op" value="*">
			<input type="submit" name="op" value="/">
		</div>
	</form>
</body>
</html>   
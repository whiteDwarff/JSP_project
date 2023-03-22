<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- pageEncoding="UTF-8" : html 파일의 encoding을 uft-8로 할게~ -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입력 폼 작성과 입력된 값 처리</title>
	
	<style>
		form input:not(form input:last-child) {
		display: block; margin-bottom: 15px; }
	</style>
</head>
<body>
<!-- 
	# get 
		- 작동방식이 필요하지 않음
	# post 
		- 주소창 노출 x 
		- POST 방식으로 넘어오는 데이터가 한긇이면 request.setCharacterEncoding("utf-8"); 작성
 -->
	<form name="myform" action="form.jsp" method="get">
		국어 : <input type="text" name="kor" placeholder="">
		영어 : <input type="text" name="eng" placeholder="">
		수학 : <input type="text" name="math" placeholder="">
		<input type="submit" value="확인">
	</form>
</body>
</html>                       

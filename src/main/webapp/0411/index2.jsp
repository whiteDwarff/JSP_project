<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	 <link rel="stylesheet" href="index.css">
</head>
<body>
<section>
	<form action="submit2.jsp" method="post">
		<h2>신상정보 입력</h2>
		<div class="wrap">
			<div class="info-wrap">
				<label for="student-number">학번 : </label>
				<label for="student-name">이름 : </label>
				<label for="grade">학년 : </label>
				<label for="subject">선택과목 : </label>
			</div>
			<div class="input-wrap">
				<input id="student-number" type="text" name="number">
				<input id="student-name" type="text" name="name">
				<div class="radio-wrap">
					<input type="radio" name="grade" value="1"><span>1학년</span>
					<input type="radio" name="grade" value="2"><span>2학년</span>
				</div>
				<select id="subject" name="subject">
					<option>JavaScript</option>
					<option>HTML / CSS</option>
					<option>C</option>
					<option>JAVA</option>
					<option>AndroidStudio</option>
					<option>DataBase</option>
				</select>
			</div>
		</div>
		<input id="submit-btn" type="submit" value="입력완료">
	</form>

</section>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
%>
<%



%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		section {
		    position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border: 1px solid black;
            padding: 30px 70px;
		}
		h2 { text-align: center; }
		.thum {
			margin-bottom: 20px;
		}
		.radio-box { margin: 20px 0;}
		#submit-btn { display: block; cursor: pointer; margin-top: 20px; width: 100%; padding: 5px 0;}
	</style>
</head>
<body>
<section>
<form action="submit.jsp" method="post">
	<h2>신상정보 입력폼</h2>
	<div class="thum">
		<label for="number">학번 : </label>
		<input type="text" id="number" name="number">
	</div>
	<div class="thum">
		<label for="name">이름 : </label>
		<input type="text" id="name" name="name">
	</div>
	<div class="radio-box">
		<span>학년 : </span>
		<input type="radio" name="grade" value="1"><span>1학년</span>
		<input type="radio" name="grade" value="2"><span>2학년</span>
	</div>
	<label for="select">선택과목 : </label>
	<select id="select" name="select">
		<option>JAVA</option>
		<option>C</option>
		<option>PYTHON</option>
	</select>
	<input id="submit-btn"type="submit" value="입력완료">
</form>
</section>


</body>
</html>
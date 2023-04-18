<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INSERT</title>
    <link rel="stylesheet" href="insert.css">
</head>
<body>
  <section>
        <article id="info">
            <h3>Welcome DIT!</h3>
        </article>
		<article id="form">
            <h3>Create Account</h3>
            <h6>make sure to fill in everything</h6>
			<form action="submit.jsp" method="post">
				<input id="number" type="text" name="number" placeholder="Student Number" minlength="6" maxlength="10">
				<input id="name" type="text" name="name" placeholder="Name" minlength="2" maxlength="4">
				<div class="radio-wrap">
					<input id="grade" type="radio" name="grade" value="1">
					<span>1학년</span>
					<input id="grade" type="radio" name="grade" value="2">
					<span>2학년</span>
				</div> <!-- radio-wrap -->
				<select id="subject" name="subject">
          <option value="1">-- SELECT YOUR SUBJECT --</option>
					<option>HTML / CSS</option>
					<option>C</option>
					<option>DATA BASE</option>
					<option>컴퓨터구조</option>
					<option>오픈소스 소프트웨어</option>
					<option>JAVA</option>
					<option>PYTHON</option>
					<option>ANDROID STUDIO</option>
					<option>JAVASCRIPT</option>
				</select>
          <div class="button-wrap">
            <input id="submit-btn" type="submit" value="제출">
            <a href="index.jsp" id="home-btn" style="text-decoration: none; color: black;">Home</a>
          </div>
			</form>
		</article>
	</section>
    <script src="insert.js"></script>
</body>
</html>
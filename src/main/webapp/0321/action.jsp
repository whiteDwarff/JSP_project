<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender");
	String join = request.getParameter("join");
	String city = request.getParameter("city");
	String memo = request.getParameter("memo");
	

%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    	#containor { display: flex;}
    	#content { text-algin: right; }
    	#data { text-align: left; margin-left: 20px; }
    	span { display: block; margin-bottom: 10px; }
    </style>
</head>
<body>
	프로토콜 : <%= request.getProtocol() %>
	<%= response.sendRedirect("/lang.jsp") %>
		<div id=containor>
			<div id="content">
				<span>아이디 </span>
				<span>비밀번호</span>
				<span>성별</span>
				<span>가입경로</span>
				<span>지역</span>
				<span>기타</span>
			</div>
			<div id="data">
				<span><%= id %></span>
				<span><%= password %></span>
				<span><%= gender %></span>
				<span><%= join %></span>
				<span><%= city %></span>
				<span><%= memo %></span>
			</div>
		</div>
</body>
</html>
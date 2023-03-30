<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
    <%
    request.setCharacterEncoding("UTF-8");
    
    String name =  request.getParameter("name");
    int kor =  Integer.parseInt(request.getParameter("kor"));
    int eng =  Integer.parseInt(request.getParameter("eng"));
    int math =  Integer.parseInt(request.getParameter("math"));
 		double result = (double)(kor+eng+math)/3;
 		String formattedResult = String.format("%.2f", result);
    
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		   * {margin: 0; padding: 0;}
        section {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }
        h1 { margin-bottom: 30px;}
        span { display: block; margin-bottom: 10px; }
        #result {
        	font-size: 16px;
        	margin-top:20px;
        	background-color: red;
        	color: white;
        	font-weight: bold;
        }

	</style>
</head>
<body>
	<section>
		<h1><%= name %>님의 점수</h1>
		<span>국어 : <%= kor %></span>
		<span>영어 : <%= eng %></span>
		<span>수학 : <%= math %></span>
		<span>총점 : <%= kor + eng + math %></span>
		<span id="result">평균 :<%= formattedResult %></span>
	</section>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  
  MVC pattern
	- Model : 출력 데이터 
	- View : 출력을 담당 (HTML)
	- Controller : 입력과 제어를 담당 (JAVA)
-->


<!-- MVC patter1 : 컨트롤러와 뷰가 물리적으로 분리되지 않은 방식 -->
<!-- Controller -->
<%
	int num = 0;
	String result;

	request.setCharacterEncoding("utf-8");
	String count = request.getParameter("n");
	
	if(count != null && !count.equals("")) {
		num = Integer.parseInt(count);
	}
	
	if(num % 2 != 0) result = "홀수";
	else result = "짝수";
%>

<!-- View -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Model -->
	<%= result %> 
</body>
</html>
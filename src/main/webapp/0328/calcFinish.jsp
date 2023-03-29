<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

request.setCharacterEncoding("utf-8");
int x = Integer.parseInt(request.getParameter("x"));
int y = Integer.parseInt(request.getParameter("y"));
String op = request.getParameter("op");

 switch(op){
	 case "+":
		 out.println(x+y);
		 break;
	 case "-":
		 out.println(x-y);
		 break;
	 case "*":
		 out.println(x*y);
		 break;
	 case "/":
		 out.println(x/y);
		 break;
		default:
		 out.println("아몰랑");
 }

%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>


</body>
</html>
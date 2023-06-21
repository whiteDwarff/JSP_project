<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
     el : 출력을 편리하게 사용하기 위함
     isELIgnored="false"  :   el을 사용하기 위해 default르 선언되어있음 
     param, requestScope, sessionScope
      -->
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${param.id}
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    request.setCharacterEncoding("UTF-8");
    
    String lang[] = request.getParameterValues("lang");
    String hobby[] = request.getParameterValues("hobby");
    
    
    for(String i : lang) 
    	out.println(i);  
		
    out.println("<br>");
    
   	for(String i : hobby)
   		out.println(i);  
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

</body>
</html>  
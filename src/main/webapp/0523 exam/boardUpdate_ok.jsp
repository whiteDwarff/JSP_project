<%@page import="board.boardDao"%>
<%@page import="board.boardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 request.setCharacterEncoding("utf-8");
 String bcode = request.getParameter("bcode");
 int intBcode = Integer.parseInt(bcode);
 
 boardDao dao = new boardDao();
 boardDto dto = new boardDto();
 dto.setBcode(intBcode);
 dto.setSubject(request.getParameter("sub"));
 dto.setContent(request.getParameter("con"));
 
 dao.updateDao(dto);
 
 response.sendRedirect("boardList.jsp");
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
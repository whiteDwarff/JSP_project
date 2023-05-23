<%@page import="javax.websocket.SendResult"%>
<%@page import="board.boardDto"%>
<%@page import="board.boardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 request.setCharacterEncoding("utf-8");
 
 String sub = request.getParameter("SUBJECT");
 String con = request.getParameter("CONTENT");
 String writer = request.getParameter("WRITER");
 
 boardDao dao = new boardDao();
 boardDto dto = new boardDto();
 
 dto.setSubject(sub);
 dto.setContent(con);
 dto.setWriter(writer);
 
 dao.insertDao(dto);
	
 response.sendRedirect("boardList.jsp");
/* dto.boardDto(request.getParameter("SUBJECT"),request.getParameter("CONTENT"),request.getParameter("WRITER")); */
 %>

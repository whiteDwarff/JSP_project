<%@page import="test.dao_dto.memberDto"%>
<%@page import="test.dao_dto.memberDao"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
<%	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");

	memberDao dao = new memberDao();
	memberDto dto = new memberDto(
			request.getParameter("id"),
			request.getParameter("name"),
			request.getParameter("pwd"));
	dao.joinDto(dto);
	
	response.sendRedirect("list.jsp");
%>

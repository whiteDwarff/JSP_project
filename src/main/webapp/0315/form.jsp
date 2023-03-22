<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    request.setCharacterEncoding("utf-8"); 
    	- 입력받은 데이터를 utf-8로 변환
     -->
<%
	
	request.setCharacterEncoding("utf-8");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	out.println(kor);
	out.println(eng);
	out.println(math);	
	out.println(Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math));
	
%>
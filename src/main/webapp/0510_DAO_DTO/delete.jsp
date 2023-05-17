<%@page import="test.dao_dto.memberDto"%>
<%@page import="test.dao_dto.memberDao"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
<%
	request.setCharacterEncoding("utf-8");
	memberDao dao = new memberDao();
	memberDto dto = new memberDto();
	dto.setId(request.getParameter("id"));
	dao.deleteDao(dto);
%>
	
<script>
		let ans = alert("삭제되었습니다!");
		if (!ans){
			location.href='list.jsp';
		}
</script>



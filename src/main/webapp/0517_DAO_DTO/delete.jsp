<%@page import="test.dao_dto.memberDao"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
	
<script>
		let ans = alert("삭제되었습니다!");
		if (!ans){
			location.href='list.jsp';
		}
</script>



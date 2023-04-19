<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
%>

<%
	String number = request.getParameter("number");
	String sql = "delete from ex01 where stu_num = ?";
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "munho";
	String password = "1111";
	
	Class.forName("org.mariadb.jdbc.Driver");
	
	try(Connection con = DriverManager.getConnection(url, user, password)) {
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, number);
		
		int i = pstmt.executeUpdate();
		
		if(i == 1)
			
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<div>
	<script type="text/javascript" src="a.js"></script>
</div>
</body>
</html>
<% 		
{
			response.sendRedirect("select.jsp");
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
%>

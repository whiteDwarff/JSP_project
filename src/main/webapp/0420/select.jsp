<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
%>
<%
	Class.forName("org.mariadb.jdbc.Driver");

	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "munho";
	String password = "1111";
	String sql = "select * from ex01";
	
	Connection con = DriverManager.getConnection(url, user, password);
	
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()) {
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>select</title>
</head>
<body>

<div>
	<%= rs.getString("stu_num") %>
	<%= rs.getString("name") %>
	<%= rs.getString("grade") %>
	<%= rs.getString("subject") %>
	<a href="update.jsp?number=<%=rs.getString("stu_num")%>&name=<%=rs.getString("name")%>">수정</a>
	<a href="delete.jsp?number=<%=rs.getString("stu_num")%>">삭제</a>
</div>
</body>
</html>
<% 
	}
	rs.close();
	stmt.close();
	con.close();
%>
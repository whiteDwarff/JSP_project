<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
 %>
 <%
	request.setCharacterEncoding("UTF-8");
 
 	String name = request.getParameter("name");
 	String id = request.getParameter("id");
 	String pwd = request.getParameter("password");
 	
 	Class.forName("org.mariadb.jdbc.Driver");
 	
 	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "munho";
	String password = "1111";
	
	try(Connection con = DriverManager.getConnection(url, user, password)){
		String sql = "insert into member(name, id, pwd) values(?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, pwd);
		
		int i = pstmt.executeUpdate();
		
		if(i == 1) out.println("adad");
	} catch(Exception e) {
		e.printStackTrace();
	}
 	
 
 
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%= name %>
	<%= id %>
	<%= pwd %>

</body>
</html>
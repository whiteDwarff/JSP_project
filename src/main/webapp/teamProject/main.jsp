<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String pwd = request.getParameter("password");
	
 	Class.forName("org.mariadb.jdbc.Driver");
	 
	String url = "jdbc:mariadb://localhost:3306/gildong";
	String user = "munho";
	String password = "1111";
	
 	try(Connection con = DriverManager.getConnection(url, user, password);) {
		String sql = "insert into user(id, name, tel, pwd) values(?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, tel);
		pstmt.setString(4, pwd);
		
		int i = pstmt.executeUpdate();
		 
		if(i == 1) out.println("입력성공");
		
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

<%= id %>
<%= name %>
<%= tel %>
<%= pwd %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
%>
<%
	request.setCharacterEncoding("utf-8");

	String number = request.getParameter("number");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
	
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "munho";
	String password = "1111";
	
	String sql = "insert into ex01 (stu_num, name, grade, subject) values(?,?,?,?)";
	
	Class.forName("org.mariadb.jdbc.Driver");
	
	try(Connection con = DriverManager.getConnection(url, user, password)){
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, number);
		pstmt.setString(2, name);
		pstmt.setString(3, grade);
		pstmt.setString(4, subject);
		
		int i = pstmt.executeUpdate();
		
		if(i == 1) response.sendRedirect("select.jsp");
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

</body>
</html>
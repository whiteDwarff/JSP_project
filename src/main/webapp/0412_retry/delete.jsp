<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
%>
<%
	request.setCharacterEncoding("utf-8");

	String number = request.getParameter("number");
	
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "munho";
	String password = "1111";
	String sql = "delete from ex01 where stu_num = ?";
	
	Class.forName("org.mariadb.jdbc.Driver");
	
	try(Connection con = DriverManager.getConnection(url, user, password)){
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, number);
		
		int i = pstmt.executeUpdate();
		
		if(i == 1) response.sendRedirect("select.jsp");
		
	} catch(Exception e) {
		e.printStackTrace();
	}
%>

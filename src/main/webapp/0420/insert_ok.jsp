<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
%>
<%
	Class.forName("org.mariadb.jdbc.Driver");

	request.setCharacterEncoding("utf-8");
	String number = request.getParameter("number");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");

	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "munho";
	String password = "1111";
	
	try(Connection con = DriverManager.getConnection(url, user, password)) {
		String sql = "insert into ex01 values(?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,number);
		pstmt.setString(2,name);
		pstmt.setString(3,grade);
		pstmt.setString(4,subject);
		
		int i = pstmt.executeUpdate();
		if(i == 1) response.sendRedirect("select.jsp");
	} catch(Exception e) {
		e.printStackTrace();
	}


%>

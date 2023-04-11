<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import="java.sql.*"    
%>
    <%
    request.setCharacterEncoding("UTF-8");
    
    String number = request.getParameter("number");
    String name = request.getParameter("name");
    String grade = request.getParameter("grade");
    String subject = request.getParameter("subject");
    
    Class.forName("org.mariadb.jdbc.Driver");
    
    
    String url = "jdbc:mariadb://localhost:3306/jspdb";
    String user = "munho";
    String password = "1111";
    
    try(Connection con = DriverManager.getConnection(url, user, password)) {
    	
    	String sql = "insert into ex01 (stu_num, name, grade, subject) values(?,?,?,?)";
    	PreparedStatement pstmt = con.prepareStatement(sql);
    	
    	pstmt.setString(1, number);
    	pstmt.setString(2, name);
    	pstmt.setString(3, grade);
    	pstmt.setString(4, subject);
    	
    	int i = pstmt.executeUpdate();
    	if(i == 1) out.println("입력 성공!"+"<br>"); 
    	
    }catch(Exception e){
    	e.printStackTrace();
    }
    %>
 
    	
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>Insert title here</title>
		 <link rel="stylesheet" href="submit.css">
</head>
<body>
	<section>
    <table border="1">
    	<thead>
    		<th>학번</th>
    		<th>이름</th>
    		<th>학년</th>
    		<th>선택과목</th>
    	</thead>
    	<tbody>
    		<tr>
   <%
 			Connection con = DriverManager.getConnection(url, user, password);
  		Statement stmt = con.createStatement();
    	String sql = "select * from ex01";
    	ResultSet rs = stmt.executeQuery(sql);
    	
    	while(rs.next()) {
    %>
	    		<td><%=rs.getString("stu_num")%></td>
	    		<td><%=rs.getString("name")%></td>
	    		<td><%=rs.getString("grade")%></td>
	    		<td><%=rs.getString("subject")%></td>
    		</tr>
<%
    	}
    	con.close();
    	rs.close();
    	stmt.close();
%>
    	</tbody>
    </table>
  </section>
</body>
</html>
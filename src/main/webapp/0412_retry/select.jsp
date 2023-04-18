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
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SELECT</title>
	<link rel="stylesheet" href="select.css">
</head>
<body>
 <section>
	<table>
		<thead>
			<th>학번</th>
			<th>이름</th>
			<th>학년</th>
			<th>수강과목</th>
		</thead>
		<tbody>
	<% 
		while(rs.next()) {
	%>
		<tr>
			<td><a href="update_form.jsp?number=<%= rs.getString("stu_num") %>"><%= rs.getString("stu_num") %></a></td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getString("grade") %></td>
			<td><%= rs.getString("subject") %></td>
		</tr>
	<%
		}
	rs.close();
	stmt.close();
	con.close();
	%>
			</tbody>
	</table>
</section>
</body>
</html>
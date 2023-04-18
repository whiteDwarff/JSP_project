<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../0411/submit.css"> 
	<style>
		#btn {
			padding: 5px 10px;
			margin-top: 50px;
			text-align: center;
			width: 100%;
		}
		#btn a {color: black; text-decoration: none;}
	</style>
</head>
<body>
<section>
<table border="1">
	<thead>
		<th>학번</th>
		<th>이름</th>
		<th>학년</th>
		<th>과목</th>
	</thead>
	<tbody>
<%
	Class.forName("org.mariadb.jdbc.Driver");
	
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "munho";
	String password = "1111";

	Connection con = DriverManager.getConnection(url, user, password);
	
	Statement stmt = con.createStatement();
	
	String sql = "select * from ex01";
	ResultSet rs = stmt.executeQuery(sql);

	while(rs.next()) {
%>
		<tr>
			<td><%= rs.getString("stu_num") %></td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getString("grade") %></td>
			<td><%= rs.getString("subject") %></td>
		</tr>
<% }
	rs.close();
	stmt.close();
	con.close();
	%>
	</tbody>
</table>
<button id="btn"><a href="index.jsp">HOME</a></button>
</section>
</body>
</html>
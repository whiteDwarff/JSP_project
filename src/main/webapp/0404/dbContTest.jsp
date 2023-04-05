<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    
    
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Database Connection Test</title>
</head>
<body>
<%
	// jdbc driver 등록
	Class.forName("org.mariadb.jdbc.Driver");
	
	// db 연결정보
	String url = "jdbc:mariadb://localhost:3306/jspdb";
	String user = "munho";
	String password = "1111";
	
	// db와의 connection 생성
	Connection con = DriverManager.getConnection(url, user, password);
	// stmt = sql문을 해석
	Statement stmt = con.createStatement();
	
	String sql = "select * from member";
	
	// executeQuery() = query문을 실행
	// 반환값은 rs에 저장
	ResultSet rs = stmt.executeQuery(sql);
	
	// rs의 return값이 true가 나올때까지 반복
	while(rs.next()) {
		out.println("<p class='data'>" + rs.getString("name") + "</p>");
		out.println(rs.getString("id"));
		out.println(rs.getString("pwd"));
	}
	
	rs.close();
	stmt.close();
	con.close();
%>
<div id="box"></div>

<script>
	const box = document.getElementById("box");
	const data = document.getElementsByClassName("data");
	
	for(let item of data) box.appendChild(item);
	
</script>
</body>
</html>
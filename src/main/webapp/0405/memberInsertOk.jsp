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
		 
		
		// database와이 연결객체 생성
		try(Connection con = DriverManager.getConnection(url, user, password);){
			//String sql = "insert into member(name, id, pwd) values('" + name + "','" + id + "','" + pwd + "')"; 
			String sql = "insert into member(name, id, pwd) values(?,?,?)";
			
			// connection을 통해 sql에 명령(실행)을 주기 위한 객체 생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			// PreparedStatemen는 java의 복잡한 sql문 실행을 편하게 하기위해 사용함.
			// 각 인덱스 자리에 맞는 데이터를 삽입함. placeholder(?)	-> (1, name)
			// sql을 먼저 생성하여 셋팅 후 실행
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, pwd);
			 
			// DML, DB를 가져올 때 사용 -> executeQuery()
			// DDL, DB를 변경 시 사용 	-> executeUpdate()
			int i = pstmt.executeUpdate();
			 
			if(i == 1) out.println("입력성공");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		 
	

    %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<br>
 <h2>Hello <%= name %>!</h2>
   <div class="form-group">
      <label for="name">Name:</label>
      <p><%= name %></p>
    </div>
    <div class="form-group">
      <label for="id">Id:</label>
      <p><%= id %></p>
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <p><%= pwd %></p>
    </div>
</body>
</html>


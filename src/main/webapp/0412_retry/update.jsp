<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%>
    
  <%
  	request.setCharacterEncoding("utf-8");
  	String number = request.getParameter("number");
  
		Class.forName("org.mariadb.jdbc.Driver");
	
		String url = "jdbc:mariadb://localhost:3306/jspdb";
		String user = "munho";
		String password = "1111";
		
		String sql = "select * from ex01 where stu_num = (?)";
	%>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>UPDATE</title>
	<link rel="stylesheet" href="insert.css">
</head>
<body>
	<%
		if(number != "") {
			try(Connection con = DriverManager.getConnection(url ,user, password)) {
				
			      PreparedStatement pstmt = con.prepareStatement(sql);
			      pstmt.setString(1, number);
			      
			      ResultSet rs = pstmt.executeQuery();
			      
			      String stu_num, name, grade, subject;
			      
			      
			      
			      if (rs.next()) {
			          stu_num = rs.getString("stu_num");
			          name = rs.getString("name");
			          grade = rs.getString("grade");
			          subject = rs.getString("subject");
		%>
		<section>
        <article id="info">
            <h3>Welcome DIT!</h3>
        </article>
				<article id="form">
		            <h3>Change Account</h3>
		            <h6>make sure to fill in everything</h6>
				<form action="update_ok.jsp" method="post">
						<input id="number" type="text" name="number" placeholder="<%= stu_num %>" minlength="6" maxlength="10" readonly>
						<input id="name" type="text" name="name" placeholder="<%= name %>" minlength="2" maxlength="4" readonly>
						<div class="radio-wrap">
							<input id="grade" type="radio" name="grade" value="1">
							<span>1학년</span>
							<input id="grade" type="radio" name="grade" value="2">
							<span>2학년</span>
						</div> <!-- radio-wrap -->
						<select id="subject" name="subject">
		          <option value="1">-- SELECT YOUR SUBJECT --</option>
							<option>HTML / CSS</option>
							<option>C</option>
							<option>DATA BASE</option>
							<option>컴퓨터구조</option>
							<option>오픈소스 소프트웨어</option>
							<option>JAVA</option>
							<option>PYTHON</option>
							<option>ANDROID STUDIO</option>
							<option>JAVASCRIPT</option>
						</select>
		          <div class="button-wrap">
		            <input id="submit-btn" type="submit" value="제출">
		            <a href="index.jsp" id="home-btn" style="text-decoration: none; color: black;">Home</a>
		          </div>
				</form>
		</article>
	</section>
		<%		
			}
		} catch(Exception e) {
				e.printStackTrace();
			}
		}
	%>
	<script>
		const number = document.getElementById('number'),
				  name = document.getElementById('name');
		
		number.value = number.placeholder;
		name.value = name.placeholder;
		
		number.style.color = "#222";
		name.style.color = "#222";
	</script>
</body>
</html>
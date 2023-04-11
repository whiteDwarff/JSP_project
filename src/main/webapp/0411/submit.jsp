<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");

String number = request.getParameter("number");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String select = request.getParameter("select");

   //3. 데이터 베이스 연결
   Class.forName("org.mariadb.jdbc.Driver");

   String url = "jdbc:mariadb://localhost:3306/jspdb";
   String user = "munho";
   String password = "1111";
   
   try(Connection con = DriverManager.getConnection(url, user, password)){

   String sql = "insert into ex01(stu_num, name, grade, subject) values(?, ?, ?, ?)";
   PreparedStatement pstmt = con.prepareStatement(sql);
   pstmt.setString(1, number);
   pstmt.setString(2, name);
   pstmt.setString(3, grade);
   pstmt.setString(4, select);
   
   
   //SQL 실행
   int i = pstmt.executeUpdate();
   
   if(i == 1){
      out.println("입력 성공!"+"<br>");
   }
   }catch(Exception e){
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
   <%
   //3. 정보 주고 드라이버매니저한테 연결하라고 시킴
   Connection con = DriverManager.getConnection(url, user, password);
   
   //4. 커넥션한테 문장통 만들라고 시킴 stmt
   Statement stmt = con.createStatement();
   
   //5. sql
   String sql ="select * from ex01";
   
   //6. rs
   ResultSet rs = stmt.executeQuery(sql);
   %>

<table border="1">
   <tr>
      <td>학번</td>
      <td>이름</td>
      <td>학년</td>
      <td>선택과목</td>
   </tr>
   <%
      while (rs.next()) {
   %>
   <tr>
      <td><%=rs.getString("stu_num")%></td>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("grade")%></td>
      <td><%=rs.getString("subject")%></td>
   </tr>
	<%
            }
   //8. 닫아
   con.close();
   rs.close();
   stmt.close();
 %>
</table>
      </body>
      </html>
      
      
      
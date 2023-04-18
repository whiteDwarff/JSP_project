<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
String number = request.getParameter("number");

//3. 데이터 베이스 연결
Class.forName("org.mariadb.jdbc.Driver");

String url = "jdbc:mariadb://localhost:3306/jspdb";
String user = "munho";
String password = "1111";
if (number != "") {
   try (Connection con = DriverManager.getConnection(url, user, password)) {

      String sql = "select * from ex01 where stu_num = (?)";
      PreparedStatement pstmt = con.prepareStatement(sql);
      pstmt.setString(1, number);

      //SQL 실행
      ResultSet rs = pstmt.executeQuery();

      String stu_num = "";
      String name = "";
      String grade = "";
      String subject = "";

      if (rs.next()) {
          stu_num = rs.getString("stu_num");
          name = rs.getString("name");
          grade = rs.getString("grade");
          subject = rs.getString("subject");
      %>

          <table>
              <tr>
                  <th>학번</th>
                  <td><%=stu_num%></td>
              </tr>
              <tr>
                  <th>이름</th>
                  <td><%=name%></td>
              </tr>
              <tr>
                  <th>학년</th>
                  <td><%=grade%></td>
              </tr>
              <tr>
                  <th>과목</th>
                  <td><%=subject%></td>
              </tr>
          </table>
          <a href="update.jsp?number=<%= rs.getString("stu_num") %>">수정</a>
          <a href="delete.jsp?number=<%= rs.getString("stu_num") %>">삭제</a>

      <%
      }
      
   } catch (Exception e) {
      e.printStackTrace();
   }
}

%>


<!DOCTYPE html>
<%@page import="board.boardDao"%>
<%@page import="board.boardDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 목록</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
   <div class="container">
      <br>
      <h1 class="text-center font-weight-bold">게시판 정보</h1>
      <br>
      <table class="table table-hover">
         <tr>			
            <th>글번호</th>
            <th>제목</th>
            <th>내용</th>
            <th>작성자</th>
            <th>게시일</th>
         </tr>
<%
request.setCharacterEncoding("utf-8");

boardDao dao = new boardDao();
ArrayList<boardDto> dtos = dao.select();

for(boardDto dto : dtos){

%>
         <tr>
            <td><%=dto.getBcode()%></td>
            <td><a href="boardUpdateForm.jsp?id=<%=dto.getBcode()%>"><%=dto.getSubject() %></a></td>
            <td><%=dto.getContent() %></td>
            <td><%=dto.getWriter() %></td>
            <td><%=dto.getRegdate()%>
         </tr>

<%}%>
      </table>
      <button onclick="location.href = 'index.jsp;'">메인으로</button>
   </div>
   
</body>
</html>
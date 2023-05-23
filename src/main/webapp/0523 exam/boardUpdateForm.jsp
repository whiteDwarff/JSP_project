
<%@page import="board.boardDto"%>
<%@page import="board.boardDao"%>
<%
/*
=============================================
작성자 : 박훈명
작성일 : 2023. 5. 23.
프로그램 기능 :
1...
2...
=============================================
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String bcode = request.getParameter("id");
int bcodeInt = Integer.parseInt(bcode);
   

boardDao dao = new boardDao();
boardDto dto = dao.selectDao(bcodeInt);


%>
    
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>게시판 수정</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

   <div class="container">
      <br>
      <h2 class="text-center font-weight-bold">게시판 정보 변경</h2>
      <hr/>
      <form action="boardUpdate_ok.jsp" method="post">
        <div class="form-group">
         <label for="id">BCODE:</label>
         <input type="text" class="form-control" id="id" name="bcode" value="<%=dto.getBcode()%>" readonly>
       </div>
       <div class="form-group">
         <label for="name">SUBJECT:</label>
         <input type="text" class="form-control" id="name" name="sub" value="<%=dto.getSubject()%>">
       </div>
       <div class="form-group">
         <label for="pwd">CONTENT:</label>
         <input type="text" class="form-control" id="pwd" name="con" value="<%=dto.getContent()%>">
       </div>
       <br>
       <div class="text-center">
             <input type="submit" value="변경" class="btn btn-secondary" >  
               <input type="button" value="삭제" class="btn btn-secondary" onclick="location.href='boardDelete.jsp?id=<%=dto.getBcode()%>'">
               <input type="button" value="목록" class="btn btn-secondary" onclick="location.href='BoardList.jsp'">
         </div>
      </form>
   </div>
</body>
</html>
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
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>게시글 등록</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
   
</head>
<body>
   <div class="container">
      <br>
      <h2 class="text-center font-weight-bold">게시글 등록하기</h2>
      <hr/>
      <form action="insertPro.jsp" method="post">
        <div class="form-group">
        
        
         <label for="SUBJECT">SUBJECT:</label>
         <input type="text" class="form-control" id="SUBJECT" name="SUBJECT">
       </div>
       <div class="form-group">
         <label for="CONTENT">CONTENT:</label>
         <input type="text" class="form-control" id="CONTENT" name="CONTENT">
       </div>
       <div class="form-group">
         <label for="WRITER">WRITER:</label>
         <input type="text" class="form-control" id="WRITER" name="WRITER">
       </div>
       <br>
       <div class="text-center">
            <button  type="submit" class="btn btn-secondary">등록</button>
            <button type="button" class="btn btn-secondary" onclick="location.href = 'boardList.jsp'">목록</button>
         </div>
      </form>
   </div>
</body>
</html>
<%@page import="board.boardDto"%>
<%@page import="board.boardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

int bcode = Integer.parseInt(request.getParameter("id"));
boardDto dto = new boardDto();
dto.setBcode(bcode);
boardDao dao = new boardDao();
dao.deleteDao(dto);
%>

<script>
if(confirm("삭제하시겠습니까?")) {
  location.href = "boardList.jsp";
} else {
  location.href = history.back();
}
</script>
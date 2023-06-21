<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!-- jstl을 사용하기 위한 지시자 사용 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String id = "Kang Mun ho";
session.setAttribute("id", id);
// pageContext.setAttribute("id", id);

String list[] = {"임승진","김신영","강문호"};

pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>EL test...</h2>
	<ul>
		<li>${"오늘 요일은?"}</li>
		<li>${"수요일"}</li>
		<li>${25-11}</li>
		<li>${5>3}</li>
		<li>${header.serverName}</li>
		<li>${id}</li>
		<li>${header.connection}</li>
		<li>${header["accept-Encoding"]}</li>
		<li>${header.Date}</li>	
	</ul>
	파라미터 name : ${param.name} <br>
	${empty param.name} <br>
	리스트 : ${list[0]} <br>
	${empty param.name? "값이 없어요":param.name }
	${empty param.name? "<h1>뭐</h1>":param.name }
	<hr>
	<form action="index.jsp" method="post">
		<input type="text" name="id">
		<button>제출</button>
	</form>
	<hr>
	<h2>JSTL test...</h2>
	<c:set var="id" value="gildong" />
	${id}		<br>
	<c:out value="${ id }" />
</body>
</html>
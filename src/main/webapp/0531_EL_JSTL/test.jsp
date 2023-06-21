<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  var 변수명, value 값  -->
<c:set  var="id" value="gilding"/>
<c:set var="income" value="2000000"/>
<c:out value="${ id }"/>의 수익은 <c:out value="${ income }"/>

<c:set var="score" value="${param.score }"/>

<c:if test="${ empty score }">
    매개변수값이 비어있습니다. 
</c:if>

<c:if test="${ !empty score }">
	스코어는 : <p><c:out value="${ score }"/>
</c:if>

<hr>

<c:set var="loginid" value="gildong"/>
<c:set var="name" value="홍길동"/>

<!-- eq : 동일하냐 ~ -->
<c:if test="${ loginid eq 'gildong' && name eq '홍길동'}">
	아이디는 <c:out value="${loginid}"/> 이고 이름은 <c:out value="${name }"/>입니다.
</c:if> 
	
<hr>
	
<c:choose>
	<c:when test = "${ empty param.name }">
		<form action="test01.jsp" method="post">
			이름 <input type="text" name="name">
			<button>제출</button>
		</form>
	</c:when>
	<c:when test = "${ param.name eq 'admin' }">
		관리자 작업 
	</c:when>
	<c:otherwise>
		기타작업
	</c:otherwise>
</c:choose>
<hr>
	
<%

List<String> list = new ArrayList<String>();
list.add("강문호");
list.add("인성진");
list.add("엄신영");
request.setAttribute("list", list);
%>

<c:forEach var="i" items="${ list }">
	<p>${ i }</p> 
</c:forEach>	
	
	
	
	
	
	
	
	
	

</body>
</html>
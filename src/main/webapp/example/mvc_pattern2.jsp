<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- MVC patter1 : 컨트롤러와 뷰가 물리적으로 분리된 방식 -->
<%
	// page 객체, 현재 페이지 내에서만 유효함 
	pageContext.setAttribute("aa", "hello");
	pageContext.setAttribute("result", 2);

	// el은 모든 저장소의 값을 가져올 수 있다.
	// 순서가 있기 때문에 우선순위에서 값을 가져오게 되면 다음 순번은 찾지 않음.
	
	
	// 해당 저장소에서 값을 가져온다.
	// 1. { pageScope.변수명 }     : page에서 변수를 가져오기 
	// 2. { requestScope.변수명 }  : request에서 변수를 가져오기 
	// 3. { sessionScope.변수명 }  : session에서 변수를 가져오기 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- request 객체를 가져온다. -->
<%= request.getAttribute("result") %>
<!-- 
	- Controller에서 전달받은 model을 View에서 사용하려면 
	  Java 코드를 또 써야하지만, el을 사용하여 없앨 수 있다.
	  
	- request.getAttribute("result") -> ${result}
-->


<!-- page 객체를 가져온다. -->
${ result } <br>
<!-- request 객체 중 result를 가져온다. -->
${ requestScope.result } <br>



${ names[1] } <br>
${ notice.title } <br>
${ aa } <br>

<!-- parameter로 받아온 값을 출력  -->
${ param.n } <br>
${ header.accept }

<!-- ${ result eq null && result eq '' } == { empty result } -->

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	 Cookie는 key : value 형식으로 저장 가능
	 경로, 이름, 상태, 값 등 다양한 형태를 저장 가능
	 서버에서 생성하고 브라우저에 응답하여 저장하도록 하는 데이터 조각 (브라우저는 해당 쿠키를 기억함)
	 브라우저는 저장된 쿠키를 해당 사이트에 자원 요청 시 포함하여 전송 **
	 브라우저가 사이트를 이용하면서 유지할 값이 있다면 사용

	 ------------------------------------------------
	 
	 쿠키의 구성요소
	 이름 : 쿠키의 이름
	 값  : 이름에 연결된 
	 유효시간 : 초단위 시간(설정하면 해당 시간동안 유지하고 설정하지 않으면 세션유지시간(브라우저가 열려있는시간) 동안만 유지)
	 도메인 : 쿠키를 생성한 사이트
	 경로 : 쿠키를 전송할 요청 URL
	 
	 
	*/
	Cookie cookie1 = new Cookie("name", "KMH");
	Cookie cookie2 = new Cookie("age", "20");
	cookie2.setPath("/path");
	System.out.println("name : " + cookie1.getValue());
	System.out.println("age : " + cookie2.getValue());
	
	// 서버에서 응답하는 내용에 쿠키를 추가 (Respone Headers에 쿠키정보를 기억시킴)
	// 개발자도구 -> Application의 Cookie에서 저장된 정보를 확인 가능
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>쿠키생성</title>
</head>
<body>
	쿠키가 생성되었습니다.
</body>
</html>
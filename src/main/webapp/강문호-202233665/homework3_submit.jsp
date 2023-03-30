<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		request.setCharacterEncoding("UTF-8");
    
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String firstTel = request.getParameter("firstTel");
		String middleTel = request.getParameter("middleTel");
		String lastTel = request.getParameter("lastTel");
		String email = request.getParameter("email");
		String firstAdress = request.getParameter("firstAdress");
		String lastAdress = request.getParameter("lastAdress");
    
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {margin: 0; padding: 0;}
        section {
            position: absolute; top: 50%; left: 50%;
            transform: translate(-50%, -50%);
            padding-bottom: 100px;
        }
        h1 { font-size: 18px; border-bottom: 1px solid red; margin-bottom: 50px; padding-bottom: 3px;}
        .wrap { display: flex; position: relative;}
        span { display: block; margin-bottom: 20px; }
        /* label { display: blcok; } */
        label {
            display: block;
            outline: none;
            width: 230px;
            padding-left: 10px;
            margin-bottom: 20px;
        }
        #tel { display: flex;  width: 50px;}
        #sbm-btn { 
            width: 100%;
            padding: 10px 0;
            position: absolute;
            bottom: -100px;
            left: 0;
            background-color: #333;
            border-style: none;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        #sbm-btn:hover {
            background-color: red;
            transition: .25s ease-out;
        }
    </style>
</head>
<body>
    <section>
        <h1><%= name %>님의 회원정보</h1>
        <div class="wrap">
            <div class="label-box">
                <label for="id">아이디</label>
                <label for="password">비밀번호</label>
                <label for="name">이름</label>
                <label>휴대전화</label>
                <label for="email">이메일</label>
                <label for="firstAdress">주소</label>
                <label for="lastAdress">상세주소</label>
            </div> 
            <div class="input-box">
              	<span><%= id %></span>
              	<span><%= password %></span>
              	<span><%= name %></span>
              	<div id="tel">
	              	<span><%= firstTel %></span>-
	              	<span><%= middleTel %></span>-
	              	<span><%= lastTel %></span>
              	</div>
              	<span><%= email %></span>
              	<span><%= firstAdress %></span>
              	<span><%= lastAdress %></span>
              	
            </div>
        </div>
    </section>
</script>
</body>
</html>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    
   		String name = request.getParameter("name");
   		String title = request.getParameter("title");
   		String content = request.getParameter("content");
   		Date date = new Date();
   		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
   		String strdate = simpleDate.format(date);
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    <style>
        * {margin: 0; padding: 0;}
        body { background-color: #e7e7e7; }
        section {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 13px; font-weight: normal;
        }
        h1 {color: rgb(97, 97, 97); font-size: 12px;}
        #qnaBtn {
            padding: 5px 10px;
            background-color: #e7e7e7;
            border: 1px solid #ccc;
            cursor: pointer;
            margin: 15px 0;
        }
        table { 
            border-top: 1px solid black;
            border-bottom: 1px solid rgb(80, 80, 80);
            text-align: center;
            color: rgb(80, 80, 80);
        }
        thead { background-color: ;}
        th { padding: 10px 0; font-weight: normal;}
        td { padding: 10px 0;}
        th:first-child,
        td:first-child {
            width: 100px;
            color: rgb(97, 97, 97);
            font-weight: bold;
        }
        th:nth-child(2),
        td:nth-child(2) {
            width: 400px;
        }
        th:nth-child(3),
        td:nth-child(3) {
            width: 100px;
        }
        th:last-child,
        td:last-child {
            width: 200px;
        }
				.content { 
            display: block;
            cursor: pointer;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            width: 400px;
            height: 35px;
        }
        
        #qna {
            width: 100%;
            height: 0;
            background: rgba(0,0,0,0.3);
            visibility: hidden;
            transition: 0.2s ease-in-out;
        } 
        .qna-background {
            width: 90%;
            height: 90%;
            background-color: #e7e7e7;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .qna-background .wrap {
            width: 80%;
            height:80%;
            /* background-color: red; */
            margin: 0 auto;
        }
        .qna-background .wrap input{
            width: calc(100% - 20px);
            outline: none;
            padding: 10px 0;
            padding-left: 20px;
            margin-bottom: 10px;
            background-color: #e7e7e7;
            border-style: none;
            border-bottom: 1px solid rgb(97, 97, 97);
        }
        .qna-background .wrap form input:first-child {
            margin-top: 40px;
        }
        .qna-background .wrap form input:nth-child(3){
            display: block;
            padding-bottom: 500px; ;
        }
        .button-wrap {
            margin-top: 70px;
            display: flex;
            justify-content: center;
        }
        .button-wrap * {
	        border: 1px solid rgb(97, 97, 97);
	        display: block;
	        padding: 5px 10px;
	        margin-right: 40px; 
	        background-color: #e7e7e7;
          cursor: pointer;
        }
        .button-wrap button:hover {
           background-color: rgb(177, 177, 177);
        }
        
        #qna-content {
        	 width: 100%;
           height: 0;
           background: rgba(0,0,0,0.3);
           visibility: hidden;
           transition: 0.2s ease-in-out;
        }
        #qna-content > div > div > span:first-child { margin-top: 40px; }
        #qna-content > div > div > span {
         	display: block;
        	margin-bottom: 10px;
        	padding: 10px 0;
        	border-bottom: 1px solid rgb(97, 97, 97);
        }
        #qna-content > div > div > p { padding-bottom: 500px; }
        #qna-content > div > div > button { 
        	padding: 5px 10px;
        }
      
    </style>
</head>
<body>
    <section id="qnaTable">
        <h1>궁금한 점이 있으시면 문의주세요.</h1>
        <button id="qnaBtn">1:1 문의</button>
        <table id="table">
            <thead>
                <th>상태</th>
                <th>제목</th>
                <th>작성자</th>
                <th>등록일</th>
            </thead>
            <tbody>
                <tr>
                    <td>답변완료</td>
                    <td class="content">비밀글입니다.</td>
                    <td>김신영</td>
                    <td>2023-03-29</td>
                </tr>
                 <tr>
                    <td>답변대기</td>
                    <td class="content"><%= title %></td>
                    <td><%= name %></td>
                    <td><%= strdate %></td>
                </tr>
            </tbody>
        </table>
    </section>

    <section id="qna-content">
        <div class="qna-background">
        	<div class="wrap">
          	<span><strong>작성자</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= name %></span>
          	<span><strong>제목</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= title %></span>  
    				<p><%= content %></p>
    				<div class="button-wrap">
    					<button id="contentCloseBtn">닫기</button>
    				</div>
        </div>
       </div>
    </section>

    <script>

        const  contentCloseBtn = document.getElementById("contentCloseBtn"),
              tableContent = document.getElementsByClassName("content")[1],
              qnaContent = document.getElementById("qna-content");
 
        tableContent.addEventListener('click', e => {
        		qnaContent.style.visibility = 'visible';
        		qnaContent.style.height = '100%';
        })
        contentCloseBtn.addEventListener('click', e => {
        		qnaContent.style.visibility = 'hidden';
        		qnaContent.style.height = '0%';
        })
    </script>
</body>
</html>
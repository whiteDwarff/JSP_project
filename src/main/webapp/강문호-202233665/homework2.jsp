<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            text-align: center;
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
    </style>
</head>
<body>
    <section>
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
                    <td>비밀글입니다.</td>
                    <td>김신영</td>
                    <td>2023-03-29</td>
                </tr>
            </tbody>
        </table>
    </section>
    <section id="qna">
        <div class="qna-background">
        <div class="wrap">
            <form action="homework2_submit.jsp" method="post">
                <input type="text" name="name" placeholder="이름을 입력하세요.">
                <input type="text" name="title" placeholder="제목">
                <input type="text" name="content" placeholder="내용을 입력해주세요.">
                <div class="button-wrap">
                    <span id="closeBtn">닫기</span>
                    <button type="submit">제출</button>
                </div>
            </form>
        </div>
    </section>
    
    <script>
    		setTimeout( () => console.log(document.body.clientHeigh), 1000);
        const qnaBtn = document.getElementById("qnaBtn"),
              qnaPage = document.getElementById("qna"),
              closeBtn = document.getElementById("closeBtn");
        qnaBtn.addEventListener('click', e => {
            qnaPage.style.visibility = 'visible';
            qnaPage.style.height = '100%';
        })
        closeBtn.addEventListener('click', e => {
            qnaPage.style.visibility = 'hidden';
            qnaPage.style.height = '0%';
        })
        if(qnaPage.style.visibility == 'hidden') document.height = '900px'
        else document.height = '100%';
    </script>
</body>
</html>
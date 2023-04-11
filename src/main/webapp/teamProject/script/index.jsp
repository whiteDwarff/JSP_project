<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 16px;
        }
        .center {
            width: 20%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        input {
            box-sizing: border-box;
            border-radius: 4px;
            border-style: none;
            border: 1px solid #ccc;
            display: block;
            margin: 0 auto 10px auto;
            padding: 10px 0;
            padding-left: 5px;
            width: calc(70% - 5px);
            outline: none;
        
        }
        input::placeholder {
            color: #333(181, 181, 181);
            font-size: 14px;
        }
        h2 { text-align: center; display: block; padding: 30px 0;}
        .content-wrap {
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        main .content-wrap:first-child,
        #join .content-wrap:first-child {margin-bottom: 30px; padding-bottom: 30px;}
        .submit-button {
            background-color: rgb(36, 169, 253);
            border-style: none;
            font-weight: bold;
            color: white;
            border-radius: 5px;
            width: 70%;
            margin-top: 20px;
            cursor: pointer;
            box-shadow: 2px 2px 7px 2px #ccc;
        }
        .submit-button:focus { outline: none;}
        .join .content-wrap{
            text-align: center;
            padding: 25px 0;
            font-weight: 400;
        }
        .text-button {
            border-style:none;
            background-color: #fff;
            font-weight: 600;
            color: rgb(36, 169, 253);
            cursor: pointer;
        }

        #join { display: none;}
        .white-bg { width: 100%; height: 100%; z-index: 10; background-color: #fff;}
    </style>
</head>
<body>
    <main class="center">
        <article class="login">
            <div class="content-wrap">
                <h2>LOGO</h2>
                <form action="" method="" id="login-form">
                    <input type="text" name="id" placeholder="아이디">
                    <input type="password" name="password" placeholder="비밀번호">
                    <input id="login-submit-btn" class="submit-button" type="submit" value="로그인">
                </form>
            </div>
        </article>
        <article class="join">
            <div class="content-wrap">
                <span>계정이 없으신가요?</span>
                <button id="join-btn" class="text-button">가입하기</button>
            </div>
        </article>
    </main>
    <article id="join" class="center">
        <div class="white-bg">
            <div class="content-wrap">
                <h2>LOGO</h2>
                <form action="main.jsp" method="post" id="join-form">
                    <input type="text" name="id" placeholder="아이디">
                    <input type="text" name="name" placeholder="성명">
                    <input type="text" name="tel" placeholder="휴대폰 번호 ( - 생략)">
                    <input type="password" name="password" placeholder="비밀번호">
                    <input id="join-submit-btn" class="submit-button" type="submit" value="가입">
            </form>
        </div>
        <article class="join">
            <div class="content-wrap">
                <span>계정이 있으신가요?</span>
                <button id="login-btn" class="text-button">로그인</button>
            </div>
        </article>
        </div>
    </article>


    <script src="../index.js"></script>
</body>
</html>
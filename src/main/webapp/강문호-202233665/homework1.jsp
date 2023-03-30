<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>성적입력받기</title>
	<style>
	   * {margin: 0; padding: 0;}
        section {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }
        h1 { margin-bottom: 30px;}
        .vertical { display: block; margin-bottom: 20px;}
        label { margin-right: 20px;}
        input {outline: none; padding-left: 10px; }
        
        #submitBtn {
            display: block; 
            width: 100%;
            padding: 10px 0;
            margin-top: 30px;
            background-color: red;
            border-style: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
	</style>
</head>
<body>
	  <section>
        <h1>학생의 점수를 입력하세요.</h1>
        <form action="homework1_submit.jsp" method="post" >
            <div class="vertical">
                <label for="name">이름</label>
                <input id="name" type="text" name="name">
            </div>
            <div class="vertical">
                <label for="kor">국어</label>
                <input id="kor" type="text" name="kor">
            </div>
            <div class="vertical">
                <label for="eng">영어</label>
                <input id="eng" type="text" name="eng">
            </div>
            <div class="vertical">
                <label for="math">수학</label>
                <input id="math" type="text" name="math">
            </div>
            <input id="submitBtn" type="submit">
        </form>
    </section>

    <script>
        const input = document.getElementsByTagName('input'),
              sbmBtn = document.getElementById('submitBtn');
        boolean isScore = false;

        sbmBtn.addEventListener('submit', e => {
            e.preventDefault();
            for(let i=0; i<input.length-1; i++) if(input[i].value == '') isScore = true;
            if(isScore) {
                alert('빈칸없이 입력하세요!!');
                isScore = false;
            }
        });
    </script>

</body>
</html>
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
        * {margin: 0; padding: 0;}
        section {
            width: 50%;
            position: absolute; top: 50%; left: 50%;
            transform: translate(-50%, -50%);
            padding-bottom: 100px;
        }
        h1 { font-size: 18px; border-bottom: 1px solid red; margin-bottom: 50px; padding-bottom: 3px;}
        .wrap { display: flex; position: relative; width: 100%;}
        label { display: block; 
                padding: 10px 0;
                margin-bottom: 20px;}
        input {
            display: block;
            outline: none;
            width: 60%;
            padding: 10px 0 10px 10px;
            margin-bottom: 20px;
        }
        .label-box { width: 30%;}
        .input-box { width: 70%;}
        #tel { display: flex; }
        #tel > * { margin-right: 20px;}
        .phone{ width: 50px; }
        #tel select { width: 60px; height: 39px;}
        #tel span { display: block; margin-top: 10px;}
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
        .input-line { display: flex; align-items: center;}
        .passwordChecking { 
            color :red;
            margin: 0 0 20px 10px;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <section>
        <h1>JOIN</h1>
        <div class="wrap">
            <div class="label-box">
                <label for="id">Id</label>
                <label for="password">Password</label>
                <label for="checkPassword">Password Confirm</label>
                <label for="name">Name</label>
                <label>Tel</label>
                <label for="email">Email</label>
                <label for="firstAdress">Address</label>
                <label for="lastAdress">Detail Address</label>
            </div> 
            <div class="input-box">
                <form action="homework3_submit.jsp">
                    <input id="id" type="text" name="id">
                    <div class="input-line">
                        <input id="password"type="password" name="password">
                        <span class="passwordChecking" class="text"></span>
                    </div>
                    <div class="input-line">
                        <input id="checkPassword"type="password" name="checkPassword" minlength="8" maxlength="14">
                        <span class="passwordChecking"></span>
                    </div>
                    <input id="name" type="text" name="name">
                    <div id="tel">
                        <select name="firstTel" class="phone">
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                        </select>
                        <span>-</span>
                        <input type="text" name="middleTel" class="phone" minlength="3" maxlength="4"><span>-</span>
                        <input type="text" name="lastTel" class="phone" minlength="3" maxlength="4">
                    </div>
                    <input id="email" type="email" name="email">
                    <input id="firstAdress" type="text" name="firstAdress">
                    <input id="lastAdress" type="text" name="lastAdress">
                    <input id="sbm-btn" type="submit" value="JOIN AS">
                </form>
            </div>
        </div>
    </section>
    <script>
        const password = document.getElementById("password"),
              checkPassword = document.getElementById("checkPassword"),
              passwordChecking = document.getElementsByClassName("passwordChecking"),
              phone = document.getElementsByClassName("phone");

        checkPassword.addEventListener('keyup', function(){
            passwordChecking[1].innerHTML ='';
            if(this.value == 0) passwordChecking[1].innerHTML ='';
            else if(this.value != password.value) passwordChecking[1].innerHTML = "passwords don't match.";
            else passwordChecking[1].innerHTML = 'passwords match.';
        })
        password.addEventListener('keyup', function(){
            passwordChecking.innerHTML ='';
            if(this.value.length < 8 || this.value.length < 14) passwordChecking[0].innerHTML = "password must be at least 8<br> and no more than 14 characters long.";
            else passwordChecking[0].innerHTML = "";
        })
        const form = document.getElementsByTagName("form")[0];
        const input = document.getElementsByTagName("input");
        form.addEventListener("submit", e => {
        	
        	for(let item of input) {
        		if(item.value == '') e.preventDefault();
        	}
        })
    </script>
</body>
</html>
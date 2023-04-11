      const joinBtn = document.getElementById('join-btn'),
              loginBtn = document.getElementById('login-btn'),
              join = document.getElementById('join'),
              loginForm = document.getElementById('login-form'),
              loginInput = document.querySelectorAll('#login-form input')
              joinForm = document.getElementById('join-form'),
              joinInput = document.querySelectorAll('#join-form input');

        // 로그인 / 회원가입 화면전환
        joinBtn.addEventListener('click', () => {
            for(let i=0; i<loginInput.length-1; i++) loginInput[i].value = '';
            join.style.display = 'block'
        });
        loginBtn.addEventListener('click', () => {
            for(let i=0; i<joinInput.length-1; i++) joinInput[i].value = '';
            join.style.display = 'none'
        });
        // 로그인 유효성 검사
        loginForm.addEventListener('submit', e => {
            e.preventDefault();
            if(submitTest(loginInput[0])) changeStyle(loginInput[0], 'red', '아이디를 입력하세요.');
            else if(submitTest(loginInput[1])) changeStyle(loginInput[1], 'red', '비밀번호를 입력하세요.');
            
        })
        for(let item of loginInput) {
            item.addEventListener('keydown', e => {
                if(e.target.value.length > 0) changeStyle(e.target, '#ccc');
            })
        }
        // 회원가입 유효성 검사
        joinForm.addEventListener('submit', e => {
            if(submitTest(joinInput[0])) changeStyle(joinInput[0], 'red', '아이디를 입력하세요.', e);
            else if(submitTest(joinInput[1])) changeStyle(joinInput[1], 'red', '이름을 입력하세요.', e);
            else if(submitTest(joinInput[2])) changeStyle(joinInput[2], 'red', '휴대폰 번호를 입력하세요.', e);
            else if(submitTest(joinInput[3])) changeStyle(joinInput[3], 'red', '비밀번호를 입력하세요.', e);
        })
        for(let item of joinInput) {
            item.addEventListener('keydown', e => {
                if(e.target.value.length > 2) changeStyle(e.target, '#ccc');
            })
        }

        const submitTest = (selector) => selector.value.length < 1;
        const changeStyle = (submitTest, textColor, message='', e='') => {
            submitTest.style.border = `1px solid ${textColor}`;
            if(message != '') alert(message);
            e.preventDefault();
        }
      const submitForm = document.getElementsByTagName('form')[0],
              numberInput = document.getElementById("number"),
              nameInput = document.getElementById('name'),
              selectInput = document.getElementsByTagName('select')[0];
    
        submitForm.addEventListener("submit", e => {
            if(submitTest(numberInput,1)) {
                changeStyle(numberInput, '1px solid red', 'Enter your student number', e);
            } else if(submitTest(nameInput,1)) {
                changeStyle(nameInput, '1px solid red', 'Enter your name', e);
            } else if(selectInput.value == 1) {
                changeStyle(selectInput, '1px solid red', 'Select your subject', e);
            }
        });
        
        numberInput.addEventListener('keydown', e => {
            if(submitTest(e.target,3)) changeStyle(e.target, 'none');
        })
        nameInput.addEventListener('keydown', e => {
            if(submitTest(e.target,3)) changeStyle(e.target, 'none');
        })

        const submitTest = (selector, num) => selector.value.length < num;
        const changeStyle = (target, value, message='', e='') => {
            target.style.border = `${value}`;
            if(message != '') alert(message);
            if(e) e.preventDefault();
            else e = null;
        };
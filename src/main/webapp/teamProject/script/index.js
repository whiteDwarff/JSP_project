const navImg = document.querySelectorAll('.sub-gnb img'),
      slideWrap = document.querySelectorAll('.slide-wrap'),
      header = document.querySelector('header');
      section = document.querySelectorAll('section'),
      form = document.getElementsByTagName('form')[0],
      input = document.getElementsByTagName('input')[0],
      scrollLeft = document.querySelectorAll('.left'),
      scrollRight = document.querySelectorAll('.right'),
      scrollBox = document.querySelectorAll('.scroll-box');
let isSlideState = true;

for(let i=0; i<navImg.length; i++){
    navImg[i].addEventListener('click', () => {
        
        for(let item of slideWrap) item.style.display = 'none';
        
        console.log(isSlideState);
        if(isSlideState) {
            slideWrap[i].style.display = 'block';
            isSlideState = false;
            for(let item of section) item.style.filter = 'blur(7px)'
            header.style.backgroundColor = '#fff';
        } else {
            slideWrap[i].style.display = 'none';
            for(let item of section) item.style.filter = 'none'
            header.style.backgroundColor = 'rgb(244, 244, 244, 0.5)';
            isSlideState = true;
        }
    })
}
form.addEventListener('submit', e => {
    
    if(input.value == ''){
        e.preventDefault();
        alert('검색어를 입력해주세요.')
    } else if(input.value.length < 3) {
        e.preventDefault();
        alert('검색어는 두글자 이상 입력해주세요.')
    }
});
for(let item of scrollLeft) {
    item.classList.add('hidden');
}
for (let i = 0; i < scrollLeft.length; i++) {
    scrollLeft[i].addEventListener("click", e => {
    scrollBox[i].scrollLeft -= 40;
    
    if(scrollBox[i].scrollLeft == 120) 
        e.target.classList.add('hidden');
    else if(scrollBox[i].scrollLeft < 480)
        scrollRight[i].classList.remove('hidden');

    });
}
for (let i = 0; i < scrollRight.length; i++) {
    scrollRight[i].addEventListener("click", (e) => {
        scrollBox[i].scrollLeft += 40;

        if(scrollBox[i].scrollLeft == 240) 
            scrollLeft[i].classList.remove('hidden');
        else if(scrollBox[i].scrollLeft > 640) 
            e.target.classList.add('hidden');
    });
}

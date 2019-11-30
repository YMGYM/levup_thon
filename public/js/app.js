let header = document.querySelector('header');
let nav = document.querySelector('nav');
let burgerIcon = document.querySelector('.burger');

header.addEventListener('click', showNav);
function showNav () {
  nav.classList.toggle('navToggle');
}

header.addEventListener('click', crossBurger);
function crossBurger() {
  burgerIcon.classList.toggle('toggle');
}


document.onmousemove = function() {
  let balls = document.querySelectorAll('.ball');
  let x = event.clientX * 100 / window.innerWidth + "%";
  let y = event.clientY * 100 / window.innerHeight + "%";
  
  for(let i = 0; i < 2; i++) {
    balls[i].style.left = x;
    balls[i].style.top = y;
    balls[i].style.transform = 'translate(-'+x+', -'+y+')';
  }
}



const root = document.documentElement;
const marqueeElementsDisplayed = getComputedStyle(root).getPropertyValue("--marquee-elements-displayed");
const marqueeContent = document.querySelector("ul.supporter-logo");

root.style.setProperty("--marquee-elements", marqueeContent.children.length);

for(let i=0; i<marqueeElementsDisplayed; i++) {
  marqueeContent.appendChild(marqueeContent.children[i].cloneNode(true));
}



let btnScrollToTop = document.querySelector('.button-scroll');

window.addEventListener('scroll', () => {

    if(window.pageYOffset > 300) {
        btnScrollToTop.style.display = 'block';
    } else {
        btnScrollToTop.style.display = 'none';
    }
});



btnScrollToTop.addEventListener('click', function() {
    // window.scrollTo(0,0);
    window.scrollTo({
        top: 0,
        left: 0,
        behavior: 'smooth'
    });
});



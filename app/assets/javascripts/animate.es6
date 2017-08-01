const themeChange = document.querySelector('div.logo-heading');
const hoverTitle = document.querySelector('h1.post-title');

themeChange.addEventListener('click', () => {
  document.body.style.backgroundColor = "#62BFE4";
});

hoverTitle.addEventListener('mouseover', () => {
  document.body.style.backgroundColor = "#62BFE4";
});

 document.getElementById("demo").innerHTML = Date();

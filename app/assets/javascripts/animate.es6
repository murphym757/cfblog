const redTheme = document.querySelector('i.redmagic');
const whiteTheme = document.querySelector('i.whitemagic');
const blueTheme = document.querySelector('i.bluemagic');

redTheme.addEventListener('click', () => {
  document.body.style.backgroundColor = "#F16A5C";
});

whiteTheme.addEventListener('click', () => {
  document.body.style.backgroundColor = "#C7C3C0";
});

blueTheme.addEventListener('click', () => {
  document.body.style.backgroundColor = "#62BFE4";
});

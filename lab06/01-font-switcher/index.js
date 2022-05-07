const makeBigger = () => {
   let currentSize = document.querySelector('header').style.fontSize;
   let newSize = currentSize ? parseInt(currentSize.slice(0, currentSize.length - 1)) + 10 : 110;
   newSize = newSize.toString() + '%';
   console.log(newSize);
   document.querySelector('header').style.fontSize = newSize;
   document.querySelector('.content').style.fontSize = newSize;
};

const makeSmaller = () => {
   let currentSize = document.querySelector('header').style.fontSize;
   let newSize = currentSize ? parseInt(currentSize.slice(0, currentSize.length - 1)) - 10 : 90;
   newSize = newSize.toString() + '%';
   console.log(newSize);
   document.querySelector('header').style.fontSize = newSize;
   document.querySelector('.content').style.fontSize = newSize;
};


document.querySelector('#a1').addEventListener('click', makeBigger);
document.querySelector('#a2').addEventListener('click', makeSmaller);


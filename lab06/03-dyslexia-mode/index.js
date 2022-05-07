const isPressed = window.localStorage.getItem('toggled');

const button = document.querySelector('#dyslexia-toggle');
if (isPressed) {
  button.ariaPressed = true;
}

button.addEventListener('click', () => {
                                button.ariaPressed = !button.ariaPressed;
                                document.body.classList.toggle("dyslexia-mode");
                                window.localStorage.setItem('toggled', button.ariaPressed);
});

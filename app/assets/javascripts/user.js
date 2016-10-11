$(document).ready(function() {
    var login = document.getElementById('login');
    var signupBtn = document.getElementById('signupBtn');
    var signup = document.getElementById('signup');

    window.onclick = function() {
        if (event.target == login) {
            login.style.display = "none";
        }
        if (event.target == signupBtn) {
            login.style.display = "none";
        }
        if (event.target == signup) {
          signup.style.display = "none";
        }
    }
})

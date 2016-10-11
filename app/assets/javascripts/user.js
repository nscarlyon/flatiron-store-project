$(document).ready(function() {
    var login = document.getElementById('login');
    var signupBtn = document.getElementById('signupBtn');
    var signup = document.getElementById('signup');
    var loginBtn = document.getElementById('loginBtn');

    window.onclick = function() {
        if (event.target == login) {
            login.style.display = "none";
        }
        if (event.target == loginBtn) {
            signup.style.display = "none";
        }
        if (event.target == signupBtn) {
            login.style.display = "none";
        }
        if (event.target == signup) {
          signup.style.display = "none";
        }
    }
})

document.getElementById('login-form').addEventListener('submit', function(event) {
    event.preventDefault();
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    // Check if username and password are correct (for demonstration purposes, let's assume username: "admin" and password: "password")
    if (username === 'admin' && password === 'password') {
        // Redirect to dashboard or perform any other action upon successful login
        window.location.href = 'dashboard.html';
    } else {
        document.getElementById('error-message').textContent = 'Invalid username or password. Please try again.';
    }
});

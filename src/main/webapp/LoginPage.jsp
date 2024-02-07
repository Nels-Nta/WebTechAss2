<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2/6/2024
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js" defer></script>
</head>
<body>
<div class="banner">
    <div class="navbar">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="register.html">Admission</a></li>
            <li><a href="login.html">Login</a></li>
        </ul>
    </div>
    <div class="loginbox">
        <h2>Login Here</h2>
        <form method="post" action="<%=request.getContextPath()%>/login">
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
            <input type="submit" name="" value="Login"><br>
            <a href="#">Forgot pass?</a>
        </form>
    </div>


</div>

<footer class="footer">
    <p>&copy; Ntabana</p>
</footer>
</body>
</html>

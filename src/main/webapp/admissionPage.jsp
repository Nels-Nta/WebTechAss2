<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2/6/2024
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="banner">

    <div class="container">
        <div class="title">Admission Form</div>
        <form id="admissionForm" method="POST" action="/admission" onsubmit="return validateForm()">
            <div class="userdetails">
                <div class="input-box">
                    <label class="details">First Name</label>
                    <input type="text" name="fname" placeholder="Enter your Name" required>
                </div>
                <div class="input-box">
                    <label class="details">Last Name</label>
                    <input type="text" name="lname" placeholder="Enter your Username" required>
                </div>
                <div class="input-box">
                    <label class="details">Email</label>
                    <input type="text" name="Email" placeholder="Enter your Email" required>
                </div>
                <div class="input-box">
                    <label class="details">Phone Number</label>
                    <input type="number" name="pnumber" placeholder="Enter your Phone Number" required>
                </div>

            </div>
            <div class="gender-details">
                <label class="gender-title">Gender</label>
                <div class="category">
                    <label for="male">
                        <input type="radio" id="male" name="gender" value="male">
                        <span class="gender">Male</span>
                    </label>
                    <label for="female">
                        <input type="radio" id="female" name="gender" value="female">
                        <span class="gender">Female</span>
                    </label>
                    <label for="prefer-not-to-say">
                        <input type="radio" id="prefer-not-to-say" name="gender" value="prefer-not-to-say">
                        <span class="gender">Prefer not to say</span>
                    </label>
                </div>
            </div>
            <div class="button">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
</div>
<footer class="footer">
    <p>&copy; Ntabana</p>
</footer>
</body>
</html>

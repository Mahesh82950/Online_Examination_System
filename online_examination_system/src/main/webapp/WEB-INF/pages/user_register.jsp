<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<style>
    body {
        background-color: #0f0f0f;
        font-family: Arial, sans-serif;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background-color: #1a1a1a;
        padding: 40px; /* same increased height feel as login */
        border-radius: 10px;
        box-shadow: 0 0 20px cyan;
        width: 350px;
        transition: 0.3s;
    }
    .container:hover {
        box-shadow: 0 0 35px cyan, 0 0 50px cyan;
        transform: scale(1.03);
    }
    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: cyan;
        text-shadow: 0 0 8px cyan;
    }
    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
    }
    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border: none;
        border-radius: 5px;
        background-color: #262626;
        color: white;
        box-shadow: 0 0 5px cyan;
        transition: 0.3s;
        outline: none;
    }
    /* restore input hover like login */
    input[type="text"]:hover,
    input[type="email"]:hover,
    input[type="password"]:hover {
        box-shadow: 0 0 10px cyan;
    }
    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="password"]:focus {
        box-shadow: 0 0 10px cyan;
    }
    /* button matches login button */
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: double;
        background-color: cyan;
        color: black;
        font-weight: bold;
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
    }
    input[type="submit"]:hover {
        background-color: black;
        color: cyan;
        box-shadow: 0 0 15px cyan;
    }
    .error {
        color: #ff4d4d;
        font-size: 12px;
        margin-top: -10px;
        margin-bottom: 10px;
        text-shadow: 0 0 8px #ff4d4d;
        min-height: 16px; /* keeps layout steady */
    }
</style>
<script>
    function validatePasswords(event) {
        const p1 = document.getElementById('password').value;
        const p2 = document.getElementById('confirmPassword').value;
        const error = document.getElementById('errorMsg');

        if (p1 !== p2) {
            error.textContent = 'Passwords do not match!';
            event.preventDefault();
            return false;
        }
        error.textContent = '';
        return true;
    }
</script>
</head>
<body>
    <div class="container">
        <h2>Register Now</h2>
        <form action="user_register" method="post" onsubmit="return validatePasswords(event)">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" required>

            <div id="errorMsg" class="error"></div>

            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>

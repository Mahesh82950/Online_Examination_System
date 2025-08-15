<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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
    .login-container {
        background-color: #1a1a1a;
        padding: 40px; /* increased padding for height */
        border-radius: 10px;
        box-shadow: 0 0 20px cyan;
        width: 350px;
        transition: 0.3s;
    }
    .login-container:hover {
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
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border: none;
        border-radius: 5px;
        background-color: #262626;
        color: white;
        box-shadow: 0 0 5px cyan;
        transition: 0.3s;
    }
    input[type="text"]:hover, input[type="password"]:hover {
        box-shadow: 0 0 10px cyan;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
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
</style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="user_login" method="post">
            <label>Username</label>
            <input type="text" name="username" required>

            <label>Password</label>
            <input type="password" name="password" required>

            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>

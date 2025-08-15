<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            display: flex;
            justify-content: space-between;
            width: 500px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .section {
            width: 45%;
            padding: 20px;
            border-radius: 5px;
            background-color: #ffffff;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 15px;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            font-size: 16px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- User Section -->
        <div class="section">
            <h2>User Section</h2>
            <p>Login to access your account</p>
            <a href="login_user">User Login</a>
        </div>

        <!-- Admin Section -->
        <div class="section">
            <h2>Admin Section</h2>
            <p>Admin access only</p>
            <a href="admin_login">Admin Login</a>
        </div>
    </div>
</body>
</html>

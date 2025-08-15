<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #E5E5E5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        width: 360px;
        text-align: center;
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }
    .container:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
    }
    h2 {
        font-size: 24px;
        color: #333333;
        margin-bottom: 25px;
        font-weight: 600;
    }
    input {
        width: 100%;
        padding: 12px 14px;
        margin-bottom: 20px;
        border: 1px solid #cccccc;
        border-radius: 6px;
        font-size: 14px;
        outline: none;
        transition: border-color 0.2s ease, box-shadow 0.2s ease;
    }
    input:focus {
        border-color: #333333;
        box-shadow: 0 0 8px rgba(51, 51, 51, 0.3);
    }
    button {
        width: 100%;
        padding: 12px;
        background-color: #333333;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: background-color 0.2s ease, box-shadow 0.2s ease;
    }
    button:hover {
        background-color: #555555;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>
        <form action="admin_login" method="post">
            <input type="text" name="username" placeholder="Admin Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You - Online Exam Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
            background-color: #f4f4f4;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }
        h2 {
            color: #28a745;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            margin-top: 15px;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Thank You for Taking the Exam!</h2>
        <p>Your responses have been recorded successfully.</p>
        
        <% 
            String userName = (String) session.getAttribute("username"); // Assuming the user's name is stored in session
            if (userName != null) { 
        %>
            <p>We appreciate your effort, <strong><%= userName %></strong>!</p>
        <% } %>
        
        <p>We hope to see you again soon.</p>

        <a href="home" class="button">Go to Homepage</a>
         <a onclick="return confirm('Want To Log Out')" href="./">LogOut</a>
    </div>
</body>
</html>

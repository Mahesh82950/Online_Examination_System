<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Exam Result</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        .container { width: 50%; margin: auto; padding: 20px; border: 1px solid #ddd; border-radius: 5px; }
        .score { font-size: 20px; font-weight: bold; }
        .btn { padding: 10px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px; }
        .btn:hover { background-color: #0056b3; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Exam Completed!</h2>
        <p class="score">Your Score: ${sessionScope.score} / ${sessionScope.totalQuestions}</p>
        <a href="./" class="btn">Go to Dashboard</a>
        <a href="send" class="btn">Send Mail</a>
    </div>
</body>
</html>

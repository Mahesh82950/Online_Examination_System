<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Exam Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .question {
            margin-bottom: 15px;
            font-weight: bold;
        }
        .options input {
            margin-right: 10px;
        }
        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }
        .submit-btn:hover {
            background-color: #0056b3;
        }
        .timer {
            font-size: 18px;
            font-weight: bold;
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Exam - ${sessionScope.selectedSubject} (${sessionScope.selectedDifficulty})</h2>

        <form action="submit_exam" method="post">
            <c:choose>
                <c:when test="${not empty sessionScope.questions}">
                    <c:set var="qNum" value="1" />
                    <c:forEach var="question" items="${sessionScope.questions}">
                        <div class="question">
                            ${qNum}. ${question.question}
                        </div>
                        <div class="options">
                            <label><input type="radio" name="answer_${question.id}" value="${question.optionA}"> ${question.optionA}</label><br>
                            <label><input type="radio" name="answer_${question.id}" value="${question.optionB}"> ${question.optionB}</label><br>
                            <label><input type="radio" name="answer_${question.id}" value="${question.optionC}"> ${question.optionC}</label><br>
                            <label><input type="radio" name="answer_${question.id}" value="${question.optionD}"> ${question.optionD}</label><br>
                        </div>
                        <hr>
                        <c:set var="qNum" value="${qNum + 1}" />
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <p>No questions available!</p>
                </c:otherwise>
            </c:choose>

            <button class="submit-btn" type="submit">Submit Exam</button>
        </form>
    </div>

</body>
</html>

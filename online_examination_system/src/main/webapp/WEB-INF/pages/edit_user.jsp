<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Modification</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: cyan;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        h1 {
            font-size: 22px;
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        label {
            display: block;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        form:input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .btn {
            padding: 8px 20px;
            font-size: 14px;
            border: double;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-submit {
            background-color: black;
            color: white;
        }

        .btn-reset {
            background-color: black;
            color: white;
        }

        .btn:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1><u>Edit User</u></h1>

        <form:form method="post" modelAttribute="user">
            <div class="form-group">
                <label for="id">User ID</label>
                 <form:input path="id" readonly="true" />
            </div>

            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="username" />
            </div>


            <div class="form-group">
                <label for="password">password</label>
                <form:input path="password" />
            </div>

            <div class="form-group">
                <label for="mail">User E-Mail</label>
                <form:input path="mail" />
            </div>
            
            <div class="form-group">
                <label for="score">Score</label>
                <form:input path="score" />
            </div>

            <div class="btn-container">
                <input type="submit" value="Save" class="btn btn-submit">
                <input type="reset" value="Reset" class="btn btn-reset">
            </div>
        </form:form>
    </div>

</body>
</html>

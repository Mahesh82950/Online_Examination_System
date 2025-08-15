<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <style>
        .table-container {
            max-width: 1000px;
            margin: auto;
            margin-top: 20px;
            background-color: cyan;
            border: 1px solid #dee2e6;
            border-radius: 8px;
            overflow: hidden;
        }
        .table-container table {
            width: 100%;
            margin-bottom: 0;
        }
        .table-container thead {
            background-color: #343a40;
            color: #dc3545;
        }
        .table-container th, .table-container td {
            text-align: center;
            vertical-align: middle !important;
        }
        .table-container .operations {
            width: 100px;
        }
        .table-container img {
            max-width: 30px;
            max-height: 30px;
        }
        .navigation {
            margin-top: 20px;
            text-align: center;
        }
        .navigation a {
            display: inline-block;
            margin: 0 10px;
            color: #343a40;
        }
        .navigation img {
            max-width: 50px;
            max-height: 50px;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <div class="table-container">
        <c:choose>
            <c:when test="${not empty userData}">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>E-mail</th>
                            <th>Score</th>
                            <th class="operations">Operations</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="data" items="${userData}">
                            <tr>
                                <td>${data.id}</td>
                                <td>${data.username}</td>
                                <td>${data.password}</td>
                                <td>${data.mail}</td>
                                <td>${data.score}</td>
                                <td class="operations">
                                    <a href="edit?id=${data.id}">
                                        <img src="images/edit.jpeg" alt="Edit">
                                    </a>
                                    <a onclick="return confirm('Do you want to delete?')" href="delete?id=${data.id}">
                                        <img src="images/delete.jpeg" alt="Delete">
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <h1 class="text-center text-danger mt-5">Record Not Found</h1>
            </c:otherwise>
        </c:choose>
    </div>

    <div class="navigation">
        <a href="./">
            <img src="images/home.jpeg" alt="Home"><br>
            Home Page
        </a>
        <a href="add">
            <img src="images/add.png" alt="Add"><br>
            Add User
        </a>
        <a href="search">
            <img src="images/search.jpg" alt="Search"><br>
            Search User
        </a>
        <a href="fetchAllUsers">
            <img src="images/GetALLEmp.png" alt="Get All"><br>
            Get All Users
        </a>
    </div>
</body>
</html>

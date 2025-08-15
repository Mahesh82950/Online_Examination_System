<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Examination Portal</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(to right, #0072ff, #00c6ff);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            flex-direction: column;
            padding: 20px;
        }

        h1 {
            font-size: 30px;
            margin-bottom: 15px;
            text-shadow: 3px 3px 10px rgba(0, 0, 0, 0.3);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .cap-icon {
            width: 40px;
            height: 40px;
            animation: float 1.5s ease-in-out infinite;
        }

        @keyframes float {
            0% { transform: translateY(0); }
            50% { transform: translateY(-8px); }
            100% { transform: translateY(0); }
        }

        .container {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 500px;
            text-align: center;
        }

        .nav-links a {
            display: block;
            background: #0072ff;
            color: white;
            text-decoration: none;
            font-size: 20px;
            padding: 12px;
            border-radius: 8px;
            transition: 0.3s;
            margin: 15px auto;
            max-width: 250px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .nav-links a:hover {
            background: #005bb5;
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
        }

        .image-container img {
            width: 120px;
            height: 120px;
            border-radius: 10px;
            margin-top: 15px;
            border: 3px solid #0072ff;
            transition: transform 0.3s;
            background: white;
            padding: 5px;
        }

        .image-container img:hover {
            transform: rotate(5deg) scale(1.1);
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            opacity: 0.8;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>
        Welcome to the Online Examination Portal 
        <img class="cap-icon" src="" alt="">
    </h1>
    <div class="container">
        <div class="nav-links">
           <a href="fetchAllUsers"> View User Report</a>
        </div>
        <div class="image-container">
            <a href="fetchAllUsers">
                <img src="images/image1.webp" alt="User Report">
            </a>
        </div>
        <p class="footer">© 2025 Online Exam Portal</p>
    </div>
</body>
</html>

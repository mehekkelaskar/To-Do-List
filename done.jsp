<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Task Added</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #c8e6c9, #e8f5e9);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .message-box {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.15);
        }

        h2 {
            color: #388e3c;
            margin-bottom: 20px;
        }

        .back-button {
            padding: 12px 25px;
            background-color: #66bb6a;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
        }

        .back-button:hover {
            background-color: #4caf50;
        }
    </style>
</head>
<body>

    <div class="message-box">
        <h2><%= request.getAttribute("success") %></h2>
        <form action="start">
        <button class="back-button">Go back to tasks</button></form>
    </div>

</body>
</html>

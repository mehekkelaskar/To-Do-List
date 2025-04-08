<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Deleted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        .container {
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            border-radius: 5px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            margin-top: 10px;
            border-radius: 5px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        setTimeout(function() {
            window.location.href = "start"; 
        }, 2000); // Redirect after 3 seconds
    </script>
</head>
<body>

    <div class="container">
        <h2><%= request.getAttribute("message") %></h2>
        <p style="margin-top: 15px; color: #888;">You will be redirected shortly...</p>
    </div>

</body>
</html>

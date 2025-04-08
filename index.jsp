<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        .header {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
            background-color:#acd8a7;
            border-radius:7px;
        }
        .content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }
        .left-section {
            text-align: center;
        }
        .left-section h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            padding-left: 30px;
        }
        .left-section input {
            padding: 10px 20px;
            font-size: 1rem;
            border: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .right-section img {
            width: 600px;
            height: 700px;
            padding-right: 40px;
        }
    </style>
</head>
<body>
    <div class="header">&nbsp;&nbsp;Planning defines productivity of your day..&nbsp;&nbsp;</div>
    <div class="content">
        <div class="left-section">
            <h1>WELCOME <br> To-Do List</h1>
            <form action="start">
            <input type="submit" value="Click Me">
</form>
        </div>
        <div class="right-section">
            <img src="https://marketplace.canva.com/EAFQUybmzUI/1/0/900w/canva-cute-minimalist-to-do-list-8FQJylJfC9M.jpg" alt="To-Do List Image">
        </div>
    </div>
</body>
</html>
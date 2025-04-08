<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced To-Do List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #a8e6cf, #dcedc1);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .todo-container {
            background: #e0f7e9;
            padding: 30px; /* Increased padding */
            border-radius: 15px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
            width: 550px; /* Increased width */
            transition: transform 0.3s ease;
        }
        .todo-container:hover {
            transform: scale(1.05);
        }
        .input-buttons {
            display: flex;
            align-items: center; /* Align input and button */
            gap: 20px; /* Added space between input and button */
            margin-bottom: 15px;
        }
        input {
            flex: 2;
            padding: 18px; /* Increased padding */
            border-radius: 10px;
            border: 2px solid #81c784;
            outline: none;
            font-size: 18px; /* Increased font size */
        }
        button {
            flex: 1;
            padding: 18px; /* Increased padding */
            border-radius: 10px;
            border: none;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
        }
        .add-task, .show-tasks {
            flex: 1;
            padding: 20px; /* Increased button padding */
            font-size: 18px; /* Increased font size */
        }
        .add-task {
            background-color: #a5d6a7;
            color: #2d3436;
        }
        .show-tasks {
            background-color: #64b5f6;
            color: #2d3436;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            padding: 12px;
            background: #c8e6c9;
            margin-bottom: 10px;
            border-radius: 8px;
        }
    </style>
</head>

<body>

    <div style="position: absolute; top: 20px; left: 50%; transform: translateX(-50%);">
        <h1 style="color: #2e7d32; font-size: 36px; font-weight: bold; text-align: center;">
          "Stay on Track – Add Your Tasks Below"
        </h1>
    </div>

    <div class="todo-container">
        <div class="input-buttons">
            <form action="add" style="flex: 1; display: flex; gap: 15px;">
                <input type="text" id="todo-input" name="task" placeholder="Enter a task" required>
                <button class="add-task" type="submit">Add Task</button>
            </form>
        </div>
        
        <form action="show" style="display: flex; justify-content: center;">
            <button class="show-tasks" type="submit">Show Tasks</button>
        </form>

        <ul id="todo-list"></ul>
    </div>

</body>

</html>

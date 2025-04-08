<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, entity.MappingClass" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #d4fc79, #96e6a1); /* Fresh green gradient */
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            width: 80%;
            max-width: 700px;
            padding: 30px;
        }

        h2 {
            color: #2e7d32;
            margin-bottom: 20px;
            text-align:center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 14px;
            border: 1px solid #c8e6c9;
            text-align: center;
        }

        th {
            background-color: #66bb6a;
            color: white;
        }

        td {
            background-color: #f1f8e9;
        }

        button {
            background-color: #43a047;
            color: white;
            padding: 8px 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background-color: #2e7d32;
        }

        .no-task {
            background-color: #fffde7;
            color: #757575;
            font-style: italic;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Tasks Added Till Now 📝📝</h2>
        <table>
            <tr>
                <th>Task</th>
                <th>Action</th>
            </tr>
            <%
                List<MappingClass> tasks = (List<MappingClass>) request.getAttribute("result");
                if (tasks != null && !tasks.isEmpty()) {
                    for (MappingClass task : tasks) {
            %>
            <tr>
                <td><%= task.getTask() %></td>
                <td>
                    <form action="delete">
                        <input type="hidden" name="taskId" value="<%= task.getId() %>">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td class="no-task" colspan="2">No tasks found.</td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
</body>
</html>

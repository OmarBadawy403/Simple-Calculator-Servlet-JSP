<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advanced Calculator</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #F8F8F8; /* Light background for the site */
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #FFFFFF;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        input[type="number"] {
            padding: 12px;
            margin: 10px;
            width: 80%;
            border: 2px solid #A0C4FF; /* Light Blue */
            border-radius: 5px;
            background-color: #E8F5FE; /* Light Blue */
            color: #333;
            font-size: 18px;
        }

        button {
            color: white;
            padding: 15px;
            margin: 10px;
            width: 45%;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        /* Different colors for each operation */
        .add {
            background-color: #EA4335; /* Red */
        }

        .add:hover {
            background-color: #D93A2B; /* Darker red */
        }

        .subtract {
            background-color: #34A853; /* Green */
        }

        .subtract:hover {
            background-color: #2C8A45; /* Darker green */
        }

        .multiply {
            background-color: #FBBC05; /* Yellow */
        }

        .multiply:hover {
            background-color: #F9A800; /* Darker yellow */
        }

        .divide {
            background-color: #4285F4; /* Blue */
        }

        .divide:hover {
            background-color: #3569D2; /* Darker blue */
        }

        .result {
            margin-top: 20px;
            font-size: 20px;
            color: #4682B4; /* Steel Blue */
        }

        .time {
            margin-top: 20px;
            font-size: 18px;
            color: #8A2BE2; /* Blue Violet */
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn-container button {
            width: 48%;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Advanced Calculator</h1>
        <form action="CalculatorServlet" method="post">
            <input type="number" name="num1" placeholder="Enter first number" required>
            <input type="number" name="num2" placeholder="Enter second number" required>

            <div class="btn-container">
                <button type="submit" name="operation" value="add" class="add">Add</button>
                <button type="submit" name="operation" value="subtract" class="subtract">Subtract</button>
            </div>
            <div class="btn-container">
                <button type="submit" name="operation" value="multiply" class="multiply">Multiply</button>
                <button type="submit" name="operation" value="divide" class="divide">Divide</button>
            </div>
        </form>

        <div class="result">
            <%
                String result = (String) request.getAttribute("result");
                if (result != null) {
                    out.println("<p>Result: " + result + "</p>");
                }
            %>
        </div>

        <div class="time">
            <%
                String currentTime = (String) request.getAttribute("currentTime");
                if (currentTime != null) {
                    out.println("<p>Current Time: " + currentTime + "</p>");
                }
            %>
        </div>
    </div>
</body>
</html>

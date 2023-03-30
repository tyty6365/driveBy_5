<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<head>
    <style>


        /* Style the buttons container */
        .button-container {
            display: flex;
            justify-content: center;
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
        }

        /* Style the buttons */
        .button {
            display: inline-block;
            background-color: SlateBlue;
            color: White;
            padding: 25px 20px;
            font-size: 16px;
            font-family: "Courier New", monospace;
            font-weight: bold;
            border: none;
            width: 25%;
            cursor: pointer;
        }

        /* Style the button when hovered over */
        .button:hover {
            background-color: #3e8e41;
        }

        .center-button-container {
            display: flex;
            justify-content: center;
            position: absolute;
            top: 20%;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 60%;
        }

        .center-button {
            display: inline-block;
            background-color: SlateBlue;
            color: White;
            padding: 20px 40px;
            font-size: 16px;
            font-family: "Courier New", monospace;
            font-weight: bold;
            border: none;
            width: 25%;
            cursor: pointer;
            text-align: center;
            margin-right: 12.5%;
            margin-left: 12.5%;
        }

        .center-button:hover {
            background-color: #3e8e41;
        }

        div {
            display: flex;
            justify-content: center;
        }

        body {
            background-image: url("https://media.giphy.com/media/gFy8rhQ5TaV9GtYqIU/giphy.gif");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            position: relative;
        }
        h1 {
            font-size: 36px;
            text-align: center;
        }
        .white-box{
            background-color: white;
            padding: 20px;
            margin: 0 auto;
            max-width: 600px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
        input {
            width: 200px;
            height: 20px;
            font-size: 18px;
        }

    </style>
</head>

<form action="hello-servlet" method="get">
    <input type="text" name="number">
    <button type="submit">Submit</button>
</form>


<form method="post" action="hello-servlet">
    <div class="button-container">


        <button class="button" type="submit" name="page" value="WEB-INF/index.jsp">HomePage</button>

        <button  class="button" type="submit" name="page" value="WEB-INF/IT_Support.jsp">IT Support</button>

        <button  class="button" type="submit" name="page" value="WEB-INF/FAQ.jsp">Q/A Forum</button>

        <button class="button" type="submit" name="page" value="WEB-INF/flowchart.jsp">Flowchart</button>

    </div>
</form>

<div class="white-box">
    <h1>Welcome to Essential Scheduling</h1>
</div>
</body>
</html>








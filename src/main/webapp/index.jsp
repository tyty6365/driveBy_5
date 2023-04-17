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
        input[type=text], input[type=password] {
            width: 200px;
            height: 20px;
            font-size: 18px;
            border-radius: 5px;
            padding: 10px;
            border: none;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
            margin-bottom: 10px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-size: 22px;
            font-weight: bold;
            color: yellow;
        }

        input[type=submit] {
            background-color: SlateBlue;
            color: White;
            padding: 10px 20px; /* smaller padding */
            font-size: 17px; /* smaller font size */
            font-family: "Courier New", monospace;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            width: auto; /* allow the button to adjust to its content */
            cursor: pointer;
            display: block; /* display the button as a block element */
            margin: 0 auto; /* center the button horizontally */
        }
        input[type=submit]:hover {
            background-color: #3e8e41;
        }


    </style>
</head>
<body style="padding-top: 150px;">
<div style="position: absolute; top: 0; left: 0; right: 0;">
    <div class="white-box">
        <h1>Welcome to Essential Scheduling</h1>
    </div>
</div>

<form action="SecondHelloServlet" method="post">
    <div style="display: flex; justify-content: center; flex-direction: column; align-items: center;">
        <label for="username">Enter your 89 number:</label>
        <input type="text" id="username" name="username"><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>

        <input type="submit" value="Submit">
    </div>
</form>
</body>



</html>








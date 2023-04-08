<%--
  Created by IntelliJ IDEA.
  com.example.essentialdemo.User: tscott
  Date: 3/21/23
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
</Head>
<Body style="background-color:lightgoldenrodyellow">
<br>
</Body>
<title>Page Title</title>


    <style>
        /* Center the image */
        .top-container {
            background-color: SlateBlue;
        }

        h1 {
            color: white;
        }

        .poop-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 850px;
            height: 500px; /* Set a fixed height for the container */
            margin: 0 auto;
        }

        .poop {
            height: 100%; /* Set the height of the image to 100% */
            width: 100%;
            object-fit:cover;
        }

        /* Style the buttons container */
        .button-container {
            display: flex;
            justify-content: center;
            position: absolute;
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
            top: 80%;
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

    </style>
</head>
<body>


<div class="top-container">
    <h1><center>Welcome! Please Use the TaskBar Below as a Guide.</center></h1>
</div>

<div class="poop-container">
    <img src="https://media.npr.org/assets/img/2017/08/31/mike1_wide-5ae1111130ae0b6606bc3634a81feba88dd7fd59.jpg" alt="Image" class="poop">
</div>

<form method="post" action="hello-servlet">
    <div class="button-container">


        <button class="button" type="submit" name="page" value="WEB-INF/index.jsp">HomePage</button>

        <button  class="button" type="submit" name="page" value="WEB-INF/IT_Support.jsp">IT Support</button>

        <button  class="button" type="submit" name="page" value="WEB-INF/FAQ.jsp">Q/A Forum</button>

        <button class="button" type="submit" name="page" value="WEB-INF/flowchart.jsp">Flowchart</button>

    </div>
</form>


<div class="center-button-container">
    <button class="center-button">Easy Navigation</button>
    <button class="center-button">Successful Scheduling</button>
    <button class="center-button">Essential Needs</button>
    <button class="center-button">A Positive Experience</button>
</div>

<script>
    // Change the image every 5 seconds
    let images = [
        "https://storage.googleapis.com/lsusports-com/2021/07/amt-1c20f81867e9b81bffe6033d8e4a17a0d98f401f-cacdd31e-lsu6030_football_fireworks.jpeg",
        "https://s25562.pcdn.co/wp-content/uploads/2022/09/LSU-campus-aerial-LSU-Public-Relations.jpg",
        "https://cloudfront-us-east-1.images.arcpublishing.com/gray/HYTSESZQCFHMRF6PIZSI4PM64Q.jpg",
        "https://bloximages.newyork1.vip.townnews.com/theadvocate.com/content/tncms/assets/v3/editorial/f/38/f38f7026-97b3-5615-b421-1cfcadecbec9/606e20f410f54.image.jpg?crop=1791%2C1007%2C0%2C74&resize=1791%2C1007&order=crop%2Cresize"
    ];

    let imgIndex = 0;
    let imgElement = document.querySelector('.poop');

    function changeImage() {
        imgIndex++;

        if (imgIndex >= images.length) {
            imgIndex = 0;
        }

        imgElement.src = images[imgIndex];
    }

    setInterval(changeImage, 5000);
</script>
</body>
</html>

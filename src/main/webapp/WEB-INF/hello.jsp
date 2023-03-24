<%--
  Created by IntelliJ IDEA.
  User: tscott
  Date: 3/21/23
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page Title</title>

    <style>
        /* Center the image */
        .poop {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
        }
        /* Style the buttons */
        .button {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px;
            border: none;
            width: 23%;
            border-radius: 4px;
            cursor: pointer;
        }
        /* Style the button when hovered over */
        .button:hover {
            background-color: #3e8e41;
        }
        div {
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
<h1><center>Welcome ${myVariable}</center></h1>

<img src="https://w7.pngwing.com/pngs/432/356/png-transparent-black-monkey-chimpanzee-monkey-ape-gorilla-monkey-mammal-image-file-formats-animals.png" alt="Image" class="poop">

<form method="post" action="hello-servlet">
    <div>
<%--        <button id="myButton" name = "myButton">Flowchart</button>--%>
<%--        <button class="button2">Button 2</button>--%>
<%--        <button class="button3">Button 3</button>--%>
<%--        <button class="button4">Button4</button>--%>
        <input type="hidden" name="action" value="processForm">
        <button type="submit" name="page1" value="WEB-INF/flowchart.jsp">Flowchart</button>
        <button type="submit" name="page2" value="page2.html">Other Buttons</button>
    </div>
</form>

<script>
    // Change the image every 5 seconds
    let images = [
        "https://w7.pngwing.com/pngs/432/356/png-transparent-black-monkey-chimpanzee-monkey-ape-gorilla-monkey-mammal-image-file-formats-animals.png",
        "https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/8/2021/01/93094_371913902_650872281-920x600.jpg",
        "https://curran-architecture.com/_main_site/wp-content/uploads/2022/01/2P1A1874-920x600.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsGuNhlHFLdC1C-wxpKIsmTGjPgYt4A7i8iQ&usqp=CAU"
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
<script>
    document.getElementById("myButton").addEventListener("click", function() {
        window.location.href = "WEB-INF/flowchart.jsp";
    });
</script>

</html>
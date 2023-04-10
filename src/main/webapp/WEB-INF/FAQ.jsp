<%--
  Created by IntelliJ IDEA.
  com.example.essentialdemo.User: tscott
  Date: 3/24/23
  Time: 7:04 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Frequently Asked Questions</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        .navbar {
            overflow: hidden;
            background-color: #7f1ea8;
        }
        .navbar a {
            float: left;
            color: white;
            display: block;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #d3a0e8;
            color: black;
        }
        .collapsible {
            background-color: #bababa;
            cursor: pointer;
            padding: 15px;
            width: 100%;
            border: none;
            text-align: left;
            outline: none;
            font-weight: bold;
            font-size: 14pt;
        }
        .content {
            background-color:#e0e0e0;
            padding: 0 5px;
            max-height: 0;
            overflow: hidden;
            font-size: 12pt;
            transition: max-height 0.2s ease-out;
        }
        .collapsible:after {
            content: "+";
            float: right;
            margin-left: 5px;
        }
        .active:after {
            content: "-";
        }
    </style>
</head>
<body>
<div class="navbar">
    <a href="#" style="float:right">myLSU</a>
</div>
<div>
    <h1 style="text-align:center">Frequently Asked Questions</h1>
    <br>
    <button type="button" class="collapsible">Why will it not allow me to add a class?</button>
    <div class="content">
        <p>1) You do not have the prerequisites for that class; 2) you have already taken that class; or 3)
            the class is full and is no longer accepting new students.</p>
    </div>
    <br>
    <button type="button" class="collapsible">When I try to log in, it does not take me to the next page. What
        am I doing wrong?</button>
    <div class="content">
        <p>You are not entering a valid 89 number. You have to be a student at LSU and have a valid 89 number
            to access Essential Scheduling.</p>
    </div>
    <br>
    <button type="button" class="collapsible">Do I have to take the classes in the order that are on my
        flowchart?</button>
    <div class="content">
        <p>Although it is recommended that you do take classes in the order that is on your flowchart, you can
            take classes out of order, as long as you meet the prerequisites for the classes you wish to take.</p>
    </div>
</body>
<script>
    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.maxHeight){
                content.style.maxHeight = null;
            } else {
                content.style.maxHeight = content.scrollHeight + "px";
            }
        });
    }
</script>
</html>

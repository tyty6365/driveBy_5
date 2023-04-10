<%--
  Created by IntelliJ IDEA.
  com.example.essentialdemo.User: tscott
  Date: 3/24/23
  Time: 7:05 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>IT Support</title>
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
        .ITform {
            background-color: #e0e0e0;
            width: 100%
        }
        .ITform label {
            padding: 10px;
        }
        .ITform textarea {
            padding: 5px;
        }
        .ITform input {
            padding: 5px;
        }
    </style>
</head>
<body>
<div class="navbar">
    <a href="#">BACK</a>
    <a href="#" style="float:right">myLSU</a>
</div>
<h1 style="text-align:center">IT Support</h1>

    <h2>Having issues? Let us know!</h2>
    <div class="ITform">
        <form>
            <label style="margin-top:10px;">LSUID:</label>
            <input type="text" style="margin-top:10px;" required>
            <br>
            <label>LSU Email:</label>
            <input type="text" required><br>
            <label>Major:</label>
            <input type="text" required><br><br>
            <label>What issue(s) you are having? Be as specific as possible</label><br>
            <textarea rows="4" cols="100" style="margin-left:10px;"></textarea><br>
            <input type="submit" value="Report Issue" style="margin-left:10px;margin-bottom:10px;" required>
        </form>
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

<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 3/24/2023
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.*"%>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="com.example.essentialdemo.Class" %>
<%@ page import="com.example.essentialdemo.User" %>
<%@ page import="com.example.essentialdemo.DropCourse" %>

<!DOCTYPE html>
<html>
<% User willc = (User) request.getAttribute("User");%>
<style>
    html, body {
        height:
                100%;
    }

    .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;

    }

    .card {
        width: 23%;
        margin-bottom: 20px;
        border: 1px solid black;
        border-radius: 5px;
        background-color: white;
    }

    .card-header {
        background-color: rgb(213, 184, 255);
        font-size: 20px;
        font-weight: bold;
        padding: 10px;
        border-bottom: 1px solid black;

    }

    .card-body {
        padding: 10px;
        font-weight: bold;
        background-color: white;


    }

    .add-button {
        display: block;
        margin: 10px auto;
        padding: 5px 10px;
        background-color: lightblue;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        background-color: rgb(213, 184, 255);

    }


    .add-button:hover {
        background-color: purple;
        color: white;
    }

    a {
        font-family: Arial, sans-serif;
        font-size: 18px;
        text-align: center;
        color: yellow;
        display: block;
        margin: 20px;
        font-weight: bold;


    }

    a:hover {
        color: red;
    }

    .coreclasses {
        font-family: Arial, sans-serif;
        font-size: 25px;
        text-align: center;
        color: rgb(255, 215, 0);
        display: block;
        margin: 20px;
        position: relative;

    }

    .Humanities {
        font-family: Arial, sans-serif;
        font-size: 25px;
        text-align: center;
        color: rgb(255, 215, 0);
        display: block;
        margin: 20px;
        position: relative;


    }
    body {
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
        url('https://lsusports.net/imgproxy/kpuLx-hW4m0tdJpUdlcdIvhGpsgunEbmTyqgyx2BV_U/fit/3840/2160/ce/0/aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL2xzdXNwb3J0cy1jb20vMjAyMS8wOC83OWY3YjUwYy1taWtlX3ZpaV90aWdlcjExNzkzLmpwZw.png');
        height: 100vh;
        background-size: cover;
        background-position: center center;
        position: relative;
        background-repeat: no-repeat;
        background-attachment: fixed;

    }
</style>
<body>


<a href ="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_che_flowchart.pdf"> Mechanical Engineering FlowChart 23-24 </a>
<div class ="coreclasses">
    <strong>Critial Classes</strong>
</div>
<form action = "MechanicalEngineeringServlet" method = post>
    <div class="card-container">
        <div class="card">
            <div class="card-header">CHEM 1001</div>
            <div class="card-body">Time<br>
                Days:
                <br>
            </div>
            <button class="add-button" value = "CHEM1001_1" name="ME" onclick="callMethods(this.value)">Add Class</button>
        </div>
        <div class="card">
            <div class="card-header">MATH 2090 </div>
            <div class="card-body">Time<br>
                Days:</div>
            <button class="add-button" value = "MATH2090_1" name="ME" onclick="callMethods(this.value)">Add Class</button>
        </div>
        <div class="card">
            <div class="card-header">GEOL 1001</div>
            <div class="card-body">Card Body</div>
            <button class="add-button" value = "GEOL1001_4" name="ME" onclick="callMethods(this.value)">Add Class</button>
        </div>
        <div class="card">
            <div class="card-header">HIST 1000</div>
            <div class="card-body">Card Body</div>
            <button class="add-button" value = "HSS1000_19" name="ME">Add Class</button>
        </div>
        <button class="add-button" value = "schedule" name="ME" onclick="callMethods(this.value)">See Schedule</button>

    </div>
</form>






</body>

<%--<button class="drop-btn" onclick="callMethods('<%= willc.popUpMessage((String)value) %>')">Drop Class</button>--%>

<script>
    <%
           String message = (String) request.getAttribute("message");
           if (message != null) {
       %>
    alert("<%= message %>");
    <%
        }
    %>

</script>

<%--<script>--%>
<%--    // JavaScript code to display the message--%>
<%--    var message = '<%= request.getAttribute("message") %>';--%>
<%--    if (message !== null && message !== '') {--%>
<%--        alert(message);--%>
<%--    }--%>
<%--</script>--%>

</html>


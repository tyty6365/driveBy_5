<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 3/23/2023
  Time: 4:11 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Engineering Flowcharts</title>
    <style>
    body {
        margin: 10;
        padding: 10;
    }
    .header {
        background-color: #744caf;
        color: #fff;
        padding: 10px;
        text-align: center;
    }
    .buttons-container {

        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin: 0 auto;
        max-width: 100%;
        padding: 10px;
    }
    .button {
        display: inline-block;
        margin: 10px;
        background-color: #744caf;
        border: 5;
        color: #fff;
        cursor: pointer;
        font-family: monospace, Fantasy;

        font-size: 20px;
        padding: 80px 60px;
        text-align: center;
        text-decoration: none;
        transition: background-color 0.3s ease;
        width: 30%;
    }
    .button:hover {
        background-color: #b463da;
    }
    </style>
</head>
<head>
    <style>
        body{
            background: linear-gradient(rgba(0,0,0,0.5),rgba(0, 0, 0, 0.5)),      url('https://lsusports.net/imgproxy/kpuLx-hW4m0tdJpUdlcdIvhGpsgunEbmTyqgyx2BV_U/fit/3840/2160/ce/0/aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL2xzdXNwb3J0cy1jb20vMjAyMS8wOC83OWY3YjUwYy1taWtlX3ZpaV90aWdlcjExNzkzLmpwZw.png');
            height:100vh;
            background-size:cover;
            background-position:center center;
            position: relative;
            background-repeat: no-repeat;
            background-attachment: fixed;

        }
    </style>
</head>
<body>
<font face = "monospace">
    <div class="header">
    <h1>Engineering Flowcharts</h1>
    </div>
    <div class="buttons-container">

        <form method="post" action="hello-servlet">
            <div class="button-container">


                <button class="button" type="submit" name="page" value="WEB-INF/SoftwareEngineering.jsp">Computer Science</button>
                <button class="button" type="submit" name="page" value="WEB-INF/ComputerEngineering.jsp">Computer Engineering</button>
                <button class="button" type="submit" name="page" value="WEB-INF/ChemicalEngineering.jsp">Chemical Engineering</button>
                <button class="button" type="submit" name="page" value="WEB-INF/CivilEngineering.jsp">Civil Engineering</button>
                <button class="button" type="submit" name="page" value="WEB-INF/MechanicalEngineering.jsp">Mechanical Engineering</button>
                <button class="button" type="submit" name="page" value="WEB-INF/ElectricalEngineering.jsp">Electrical Engineering</button>
            </div>
        </form>

    </div>
</font>
</body>

</html>



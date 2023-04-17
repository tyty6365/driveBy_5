<%--
  Created by IntelliJ IDEA.
  com.example.essentialdemo.User: mimic
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
            margin: 0;
            padding: 0;
            background-image: url('https://lsusports.net/imgproxy/kpuLx-hW4m0tdJpUdlcdIvhGpsgunEbmTyqgyx2BV_U/fit/3840/2160/ce/0/aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL2xzdXNwb3J0cy1jb20vMjAyMS8wOC83OWY3YjUwYy1taWtlX3ZpaV90aWdlcjExNzkzLmpwZw.png');
            background-size: cover;
            background-position: center center;
            position: relative;
            background-repeat: no-repeat;
            background-attachment: fixed;
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
            justify-content: space-around;
            margin: 0 auto;
            max-width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }
        .button {
            display: inline-block;
            margin: 10px;
            background-color: #744caf;
            border: none;
            border-radius: 50px;
            color: #fff;
            cursor: pointer;
            font-family: cursive, sans-serif;
            font-size: 24px;
            padding: 70px 0; /* Updated padding value */
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s ease;
            width: calc(33.33% - 20px);
            box-shadow: 0px 5px 0px #a94fdf;
        }

        .button:hover {
            background-color: #b463da;
        }



    </style>
</head>
<body>
<div class="header">
    <h1>Engineering Flowcharts</h1>
</div>
<form method="post" action="hello-servlet">
    <div class="buttons-container">
        <button class="button" type="submit" name="page" value="WEB-INF/SoftwareEngineering.jsp">Software Engineering</button>
        <button class="button" type="submit" name="page" value="WEB-INF/ComputerEngineering.jsp">Computer Engineering</button>
        <button class="button" type="submit" name="page" value="WEB-INF/ChemicalEngineering.jsp">Chemical Engineering</button>
        <button class="button" type="submit" name="page" value="WEB-INF/CivilEngineering.jsp">Civil Engineering</button>
        <button class="button" type="submit" name="page" value="WEB-INF/MechanicalEngineering.jsp">Mechanical Engineering</button>
        <button class="button" type="submit" name="page" value="WEB-INF/ElectricalEngineering.jsp">Electrical Engineering</button>
    </div>
</form>

</body>
</html>

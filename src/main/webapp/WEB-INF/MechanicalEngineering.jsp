<%--
  Created by IntelliJ IDEA.
  com.example.essentialdemo.User: mimic
  Date: 3/24/2023
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
-<html>
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


<a href ="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_me_w_4yr_crit_path_phaseone_flowchart.pdf"> Mechanical Engineering FlowChart 23-24 </a>
<div class ="coreclasses">
    <strong>Core Classes</strong>
</div>
<form action = "MechanicalEngineeringServlet" method = post>
<div class="card-container">
    <div class="card">
        <div class="card-header">CSC 2262</div>
        <div class="card-body">Time<br>
            Days:
            <br>
        </div>
        <button class="add-button" value = "CSC2262" name="ME">Add Class</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 3380</div>
        <div class="card-body">Time<br>
            Days:</div>
        <button class="add-button" value = "CSC3380" name="ME">Add Class</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 4040</div>
        <div class="card-body">Card Body</div>
        <button class="add-button" value = "CSC4040" name="ME">Add Class</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 1111</div>
        <div class="card-body">Card Body</div>
        <button class="add-button" value = "CSC1111" name="ME">Add Class</button>
    </div>
    <button class="add-button" value = "schedule" name="ME">See Schedule</button>

</div>
</form>






</body>
<script>
</script>
</html>

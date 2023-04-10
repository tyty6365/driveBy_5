<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 3/24/2023
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
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


<a href ="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_che_flowchart.pdf"> Chemical Engineering FlowChart 23-24 </a>
<div class ="coreclasses">
    <strong>Critial Classes</strong>
</div>

<div class="card-container">
    <div class="card">
        <div class="card-header">MATH 1550</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M T W TH F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">MATH 1552</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M T W TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">PHYS 2110</div>
        <div class="card-body">Time: 8:30a - 9:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CE 2450</div>
        <div class="card-body">Time: 9:30a - 10:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 4133</div>
        <div class="card-body">Time: 10:30a - 11:50a<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 4243</div>
        <div class="card-body">Time: 10:30a - 11:50a<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
</div>
<div class="Humanities">
    <strong>Core Classes</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">ME 1212</div>
        <div class="card-body">Time: 8:30a - 9:20a<br>
            Days: M
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 2334</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M T W TH F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 2733</div>
        <div class="card-body">Time: 9:00a - 10:20a<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">EE 2950</div>
        <div class="card-body">Time: 10:30a - 11:20p<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CE 3400</div>
        <div class="card-body">Time: 10:30a - 11:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 3701</div>
        <div class="card-body">Time: 9:30a - 12:20p<br>
            Days: M
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 2543</div>
        <div class="card-body">Time: 10:30a - 11:50a<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">EE 3950</div>
        <div class="card-body">Time: 10:30a - 11:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 3143</div>
        <div class="card-body">Time: 1:30p - 2:50p<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 3834</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M T W TH F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 3633</div>
        <div class="card-body">Time: 3:30p - 5:20p<br>
            Days: M
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 3603</div>
        <div class="card-body">Time: 7:30a - 8:50a<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 4611</div>
        <div class="card-body">Time: 10:30a - 1:20p<br>
            Days: M
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 4433</div>
        <div class="card-body">Time: 9:30a - 10:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 4621</div>
        <div class="card-body">Time: 10:30a - 1:20p<br>
            Days: M
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 4201</div>
        <div class="card-body">Time: 10:30a - 1:20p<br>
            Days: M
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ME 4183</div>
        <div class="card-body">Time: 9:00a - 10:20a<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
</div>
<div class="Humanities">
    <strong>Mathematics</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">MATH 2057</div>
        <div class="card-body">Time: 12:30p - 1:20p<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">MATH 2070</div>
        <div class="card-body">Time: 10:30a - 11:20a<br>
            Days: M T W TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">MATH 2090</div>
        <div class="card-body">Time: 1:30a - 2:20p<br>
            Days: M T W TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
</div>
<div class="Humanities">
    <strong>Physics</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">PHYS 2108</div>
        <div class="card-body">Time: 8:30a - 11:20a<br>
            Days: M
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">PHYS 2113</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
</div>
<div class="Humanities">
    <strong>Humanities</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">PHIL 2020</div>
        <div class="card-body">Time: 2:30p - 3:20p<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CMST 1061</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CMST 2060</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CMST 2063</div>
        <div class="card-body">Time: 9:30a - 10:20a<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
</div>
<div class="Humanities">
    <strong>Chemistry</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">CHEM 1201</div>
        <div class="card-body">Time: 8:30a - 9:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CHEM 1202</div>
        <div class="card-body">Time: 8:30a - 9:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CHEM 1212</div>
        <div class="card-body">Time: 8:30a - 10:20a<br>
            Days: M W
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
</div>
<div class="Humanities">
    <strong>English</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">ENGL 1001</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ENGL 2000</div>
        <div class="card-body">Time: 9:30a- 10:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
</div>
<div class="Humanities">
    <strong>Other</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">ECON 2030</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M W
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">INTL 2000</div>
        <div class="card-body">Time: 1:30p - 2:20p<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">HNRS 2020</div>
        <div class="card-body">Time: 9:30a - 10:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button">Add</button>
    </div>
</div>
</body>
<script>
</script>
</html>

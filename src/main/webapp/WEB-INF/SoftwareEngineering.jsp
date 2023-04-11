<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 3/22/2023
  Time: 2:46 PM
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
<a href ="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_csc_seg_flowchart.pdf"> Computer Science FlowChart 23-24 </a>
<form action = "CompSciServlet" method = post>
    <button class="add-button" value = "schedule" name="CSE">See Schedule</button>
<div class="coreclasses">
    <strong>Core Classes</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">CSC 1350</div>
        <div class="card-body">Time: 9:30a - 10:20a<br>
            Days: M T F
            <br>
        </div>
        <button class="add-button" value="CSC1350" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 1351</div>
        <div class="card-body">Time: 10:30a - 11:50a<br>
            Days: T TH<br>
        </div>
        <button class="add-button" value="CSC1351" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 3102</div>
        <div class="card-body">Time: 9:00a - 10:20a<br>
            Days: T TH<br>
        </div>
        <button class="add-button" value="CSC3102" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 2259</div>
        <div class="card-body">Time: 12:00p - 1:20p<br>
            Days: T TH<br>
        </div>
        <button class="add-button" value="CSC2259" name="CSE">Add</button>
    </div>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">CSC 3501</div>
        <div class="card-body">Time: 10:30a - 11:20a<br>
            Days: M W F<br>
        </div>
        <button class="add-button" value="CSC3501" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 2262</div>
        <div class="card-body">Time: 1:20p - 2:50p<br>
            Days: T TH<br>
        </div>
        <button class="add-button" value="CSC2262" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 3380</div>
        <div class="card-body">Time: 3:00p - 4:30p<br>
            Days: T TH<br>
        </div>
        <button class="add-button" value="CSC3380" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 3200</div>
        <div class="card-body">Time: 11:30a - 12:20p<br>
            Days: M<br></div>
        <button class="add-button" value="CSC3200" name="CSE">Add</button>
    </div>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">CSC 4101</div>
        <div class="card-body">Time: 1:30p - 2:50p<br>
            Days: T TH<br>
        </div>
        <button class="add-button" value="CSC4101" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 4103</div>
        <div class="card-body">Time: 1:30p - 2:50p<br>
            Days: M W<br>
        </div>
        <button class="add-button" value="CSC4103" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 4330</div>
        <div class="card-body">Time: 4:30p - 5:50p<br>
            Days: T TH<br>
        </div>
        <button class="add-button" value="CSC4330" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 4402</div>
        <div class="card-body">Time: 12:00p - 1:20p<br>
            Days: T TH<br>
        </div>
        <button class="add-button" value="CSC4402_1" name="CSE">Add</button>
    </div>
</div>
<div class="Humanities">
    <strong>Mathematics</strong>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">MATH 1550</div>
        <div class="card-body">Time: 7:30a - 8:20a<br>
            Days: M T W TH F
            <br>
        </div>
        <button class="add-button" value="MATH1550" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">MATH 1552</div>
        <div class="card-body">Time: 10:30a - 11:20a<br>
            Days: M T W TH
            <br>
        </div>
        <button class="add-button" value="MATH1552_2" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">MATH 2090</div>
        <div class="card-body">Time: 1:30p - 2:20p<br>
            Days: M T W TH
            <br>
        </div>
        <button class="add-button" value="MATH2090_1" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">IE 3302</div>
        <div class="card-body">Time: 7:30a - 9:00a<br>
            Days: T TH
            <br>
        </div>
        <button class="add-button" value="IE3302" name="CSE">Add</button>
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
        <button class="add-button" value="ENGL1001_41" name="CSE">Add</button>
    </div>
    <div class="card">
        <div class="card-header">ENGL 2000</div>
        <div class="card-body">Time: 9:30a - 10:20a<br>
            Days: M W F
            <br>
        </div>
        <button class="add-button" value="ENGL2000" name="CSE">Add</button>
    </div>
</div>
</form>
</body>
<script>
</script>
</html>

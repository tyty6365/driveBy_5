<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 3/25/2023
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
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


<a href="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_ee_flowchart.pdf"> Engineering FlowChart 23-24
    FlowChart 23/24 </a>
<form action = "EEServlet" method = post>
    <button class="add-button" value = "schedule" name="EE">See Schedule</button>
    <div class ="coreclasses">
        <strong>General Classes</strong>
    </div>
    <div class="card-container">
        <div class="card">
            <div class="card-header">MATH 1550</div>
            <div class="card-body">Time: 7:30a - 8:20a<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="MATH1550_9" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">ENGL 1001</div>
            <div class="card-body">Time: 8:30a - 9:20a<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="ENGL1001_41" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">CHEM 1201</div>
            <div class="card-body">Time: 9:30a - 10:20a<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="CHEM1201_1" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">BIOL 1001</div>
            <div class="card-body">Time: 10:30a - 11:20a<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="BIOL1001_1" name="EE">Add</button>
        </div>
    </div>
    </div>
    <div class="card-container">
        <div class="card">
            <div class="card-header">ASTRO 1101</div>
            <div class="card-body">Time: 11:30a - 12:20p<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="ASTRO1101_1" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">ART 1001</div>
            <div class="card-body">Time: 12:30p - 1:20p<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="ART1001_1" name="EE">Add</button>
        </div>
    </div>
    <div class="Humanities">
        <strong>Core Classes</strong>
    </div>
    <div class="card-container">
        <div class="card">
            <div class="card-header">EE 1801</div>
            <div class="card-body">Time: 8:30a - 9:20a<br>
                Days: T TH
                <br>
            </div>
            <button class="add-button" value="EE1801_2" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">EE 1810</div>
            <div class="card-body">Time: 7:30a - 8:20a<br>
                Days: M T W TH F
                <br>
            </div>
            <button class="add-button" value="EE1810_5" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">EE 2120</div>
            <div class="card-body">Time: 9:00a - 10:20a<br>
                Days: T TH
                <br>
            </div>
            <button class="add-button" value="EE2120_1" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">EE 2130</div>
            <div class="card-body">Time: 10:30a - 11:20p<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="EE2130_1" name="EE">Add</button>
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
            <button class="add-button" value="PHIL2020_1" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">CMST 1061</div>
            <div class="card-body">Time: 7:30a - 8:20a<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="CMST1061_1" name="EE">Add</button>
        </div>
    </div><div class="Humanities">
    <strong>Physics</strong>
</div>
    <div class="card-container">
        <div class="card">
            <div class="card-header">PHYS 1201</div>
            <div class="card-body">Time: 8:30a - 11:20a<br>
                Days: M
                <br>
            </div>
            <button class="add-button" value="PHYS1201_1" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">PHYS 2108</div>
            <div class="card-body">Time: 7:30a - 8:20a<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="PHYS2108_1" name="EE">Add</button>
        </div>
        <div class="card">
            <div class="card-header">PHYS 2110</div>
            <div class="card-body">Time: 7:30a - 8:20a<br>
                Days: M W F
                <br>
            </div>
            <button class="add-button" value="PHYS2110_1" name="EE">Add</button>
        </div>


    </div>


</form>
</body>
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
</html>

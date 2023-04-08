<%--
  Created by IntelliJ IDEA.
  com.example.essentialdemo.User: mimic
  Date: 3/22/2023
  Time: 2:46 PM
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
<a href ="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_csc_seg_flowchart.pdf"> Computer Science FlowChart 23-24 </a>

<form  action="SoftwareEngineeringServlet" method="post">
    <button name = "CSC3102" value ="CSC 3102"  class="add-button" >Click here to see your schedule </button>
</form>

<div class="card-container">
    <div class="card">
        <div class="card-header">CSC 1350</div>
        <div class="card-body">Time<br>
            Days:
            <br>
        </div>
        <button onclick="addClass('CSC 1350', this);" class="add-button" value ="1350">Add com.example.essentialdemo.Class</button>

    </div>
    <div class="card">
        <div class="card-header">Csc 1351</div>
        <div class="card-body">Card Body</div>
        <button onclick="addClass('CSC 1351', this);" class="add-button" value = "1351">Add</button>

    </div>
    <div class="card">
        <div class="card-header">CSC 3102</div>
        <div class="card-body">Card Body</div>
        <button onclick="addClass('CSC 3102', this);" class="add-button" value = "3102">Add</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 2262</div>
        <div class="card-body">Card Body</div>
        <button onclick="addClass('CSC 2262', this);" class="add-button" value ="2262">Add com.example.essentialdemo.Class</button>
    </div>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">CSC 3501</div>
        <div class="card-body">Card Body</div>
        <button onclick="addClass('CSC 3501', this);" class="add-button" value ="3501">Add com.example.essentialdemo.Class</button>

    </div>
    <div class="card">
        <div class="card-header">CSC 2259</div>
        <div class="card-body">Card Body</div>
        <button onclick="addClass('CSC 2259', this);" class="add-button" value ="2259">Add com.example.essentialdemo.Class</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 2262</div>
        <div class="card-body">Card Body</div>
        <button onclick="addClass('CSC 2262', this);" class="add-button" value ="2262">Add com.example.essentialdemo.Class</button>
    </div>
    <div class="card">
        <div class="card-header">CSC 4101</div>
        <div class="card-body">Card Body</div>
        <button onclick="addClass('CSC 4101', this);" class="add-button" value ="4101">Add com.example.essentialdemo.Class</button>
    </div>
</div>
<div class="card-container">
    <div class="card">
        <div class="card-header">Card Header</div>
        <div class="card-body">Card Body</div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">Card Header</div>
        <div class="card-body">Card Body</div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">Card Header</div>
        <div class="card-body">Card Body</div>
        <button class="add-button">Add</button>
    </div>
    <div class="card">
        <div class="card-header">Card Header</div>
        <div class="card-body">Card Body</div>
        <button class="add-button">Add</button>
    </div>
</div>
<script>
    // function addClass(classCode) {
    //     var xhr = new XMLHttpRequest();
    //     xhr.open('POST', 'SoftwareEngineeringServlet', true);
    //     xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    //     xhr.onreadystatechange = function() {
    //         if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
    //             console.log('Data sent successfully');
    //         }
    //     };
    //     xhr.send('classCode=' + encodeURIComponent(classCode));
    // }

    function addClass(classCode, button) {
        button.disabled = true; // Disable only the clicked button
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'SoftwareEngineeringServlet', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function() {
            if (this.readyState === XMLHttpRequest.DONE) {
                if (this.status === 200) {
                    console.log('Data sent successfully');
                    // Redirect to new page
                    // window.location.href = 'WEB-INF/Software.jsp';
                } else {
                    console.log('Error: ' + this.status);
                    console.log("Failed");
                }
            }
        };
        xhr.send('classCode=' + classCode); // Send data to server
    }

    // function sendData() {
    //     var xhr = new XMLHttpRequest();
    //     xhr.open('POST', 'SoftwareEngineeringServlet', true);
    //     xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    //     xhr.onreadystatechange = function() {
    //         if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
    //             console.log('Data sent successfully');
    //         }
    //     };
    //     xhr.send('sendData=true');
    // }
</script>
</body>

</html>

<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 3/25/2023
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<style>
  html, body {
    height: 100%;
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


<a href ="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_ce_flowchart.pdf"> Civil Engineering FlowChart 23-24 </a>
<form action = "CivilServlet" method = post>
  <button class="add-button" value = "schedule" name="CiviE">See Schedule</button>
<div class ="coreclasses">
  <strong>Core Classes</strong>
</div>

<div class="card-container">
  <div class="card">
    <div class="card-header">CHEM 1201</div>
    <div class="card-body">Time: 8:30a - 9:20a<br>
      Days: M W F</div>
    <button class="add-button" value="CHEM1201" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CHEM 1202</div>
    <div class="card-body">Time: 8:30a - 9:20a<br>
      Days: M W F</div>
    <button class="add-button" value="CHEM1202" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">GEOL 1001</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M W F</div>
    <button class="add-button" value="GEOL1001_4" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 2950</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M W F</div>
    <button class="add-button" value="EE2950" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 2700</div>
    <div class="card-body">Time: 1:30p - 4:20p<br>
      Days: F</div>
    <button class="add-button" value="CE2700" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 2450</div>
    <div class="card-body">Time: 9:30a - 10:20a<br>
      Days: M W F</div>
    <button class="add-button" value="CE2450" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 2460</div>
    <div class="card-body">Time: 8:30a - 9:20a<br>
      Days: M W F</div>
    <button class="add-button" value="CE2460" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 2200</div>
    <div class="card-body">Time: 1:30p - 2:20p<br>
      Days: M W F</div>
    <button class="add-button" value="CE2200" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 3400</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M W F</div>
    <button class="add-button" value="CE3400" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 3300</div>
    <div class="card-body">Time: 9:30a - 10:20a<br>
      Days: M W F</div>
    <button class="add-button" value="CE3300" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 3500</div>
    <div class="card-body">Time: 9:00a - 9:50a<br>
      Days: T TH</div>
    <button class="add-button" value="CE3500" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 3700</div>
    <div class="card-body">Time: 4:30p - 5:20p<br>
      Days: M</div>
    <button class="add-button" value="CE3700" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 3415</div>
    <div class="card-body">Time: 1:30p - 2:50p<br>
      Days: T TH</div>
    <button class="add-button" value="CE3415" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 2250</div>
    <div class="card-body">Time: 3:30p - 6:20p<br>
      Days: M</div>
    <button class="add-button" value="CE2250" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 3410</div>
    <div class="card-body">Time: 4:30p - 7:20p<br>
      Days: M</div>
    <button class="add-button" value="CE3410" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 3350</div>
    <div class="card-body">Time: 3:00p - 5:50p<br>
      Days: W</div>
    <button class="add-button" value="CE3350" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 3600</div>
    <div class="card-body">Time: 10:30a - 11:50a<br>
      Days: T TH</div>
    <button class="add-button" value="CE3600" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">ECON 2030</div>
    <div class="card-body">Time: 7:30a - 8:20a<br>
      Days: M W</div>
    <button class="add-button" value="ECON2030" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EVEG 3200</div>
    <div class="card-body">Time: 3:30p - 4:50p<br>
      Days: M W</div>
    <button class="add-button" value="EVEG3200" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EVEG 3110</div>
    <div class="card-body">Time: 9:00a - 10:20a<br>
      Days: T TH</div>
    <button class="add-button" value="EVEG3110" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 4410</div>
    <div class="card-body">Time: 1:30p - 2:50p<br>
      Days: T TH</div>
    <button class="add-button" value="CE4410_1" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 4300</div>
    <div class="card-body">Time: 1:30p - 2:50p<br>
      Days: T TH</div>
    <button class="add-button" value="CE4300" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 4670</div>
    <div class="card-body">Time: 10:30a - 11:50a<br>
      Days: T TH</div>
    <button class="add-button" value="CE4670" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 4200</div>
    <div class="card-body">Time: 9:00a - 10:20a<br>
      Days: T TH</div>
    <button class="add-button" value="CE4200" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 4750</div>
    <div class="card-body">Time: 8:30a - 10:20a<br>
      Days: M</div>
    <button class="add-button" value="CE4750" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 4430</div>
    <div class="card-body">Time: 3:00p - 5:50p<br>
      Days: T TH</div>
    <button class="add-button" value="CE4430" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CE 4760</div>
    <div class="card-body">Time: 9:30a - 11:20a<br>
      Days: M</div>
    <button class="add-button" value="CE4760" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">PHYS 2110</div>
    <div class="card-body">Time: 8:30a - 9:20a<br>
      Days: M W F</div>
    <button class="add-button" value="PHYS2110" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">PHYS 2112</div>
    <div class="card-body">Time: 1:30p - 2:20p<br>
      Days: M W F</div>
    <button class="add-button" value="PHYS2112" name="CiviE">Add</button>
  </div>
</div>
<div class="coreclasses">
  <strong>Mathematics</strong>
</div>
<div class="card-container">
  <div class="card">
    <div class="card-header">MATH 1550</div>
    <div class="card-body">Time: 7:30a - 8:20a<br>
      Days: M T W TH F</div>
    <button class="add-button" value="MATH1550" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">MATH 1552</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M T W TH</div>
    <button class="add-button" value="MATH1552_2" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">MATH 2057</div>
    <div class="card-body">Time: 12:30p - 1:20p<br>
      Days: M W F</div>
    <button class="add-button" value="MATH2057" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">MATH 2065</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M W F</div>
    <button class="add-button" value="MATH2065" name="CiviE">Add</button>
  </div>
</div>
<div class="coreclasses">
  <strong>English</strong>
</div>
<div class="card-container">
  <div class="card">
    <div class="card-header">ENGL 1001</div>
    <div class="card-body">Time: 7:30a - 8:20a<br>
      Days: M W F</div>
    <button class="add-button" value="ENGL1001_41" name="CiviE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">ENGL 2000</div>
    <div class="card-body">Time: 9:30a - 10:20a<br>
      Days: M W F</div>
    <button class="add-button" value="ENGL2000" name="CiviE">Add</button>
  </div>
</div>
</form>
</body>
<script>
</script>
</html>


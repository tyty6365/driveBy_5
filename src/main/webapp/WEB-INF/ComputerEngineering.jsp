<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 3/25/2023
  Time: 2:14 PM
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


<a href ="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_eec_flowchart.pdf"> Computer Engineering FlowChart 23-24 </a>
<form action = "CompEngServlet" method = post>
  <button class="add-button" value = "schedule" name="CE">See Schedule</button>
<div class ="coreclasses">
  <strong>Core Classes</strong>
</div>

<div class="card-container">
  <div class="card">
    <div class="card-header">EE 1810</div>
    <div class="card-body">Time: 3:00p - 3:50p<br>
      Days: T</div>
    <button class="add-button" value="EE1810" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 2741</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M W</div>
    <button class="add-button" value="EE2741" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CSC 1253</div>
    <div class="card-body">Time: 12:00p - 1:20p<br>
      Days: T TH</div>
    <button class="add-button" value="CSC1253" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CSC 1254</div>
    <div class="card-body">Time: 12:00p - 1:20p<br>
      Days: T TH</div>
    <button class="add-button" value="CSC1254" name="CE">Add</button>
  </div>
</div>
<div class="card-container">
  <div class="card">
    <div class="card-header">EE 2742</div>
    <div class="card-body">Time: 1:30p - 2:20p<br>
      Days: TH</div>
    <button class="add-button" value="EE2742" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 2810</div>
    <div class="card-body">Time: 9:00a - 9:50a<br>
      Days: T</div>
    <button class="add-button" value="EE2810" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 3755</div>
    <div class="card-body">Time: 1:30a - 2:20a<br>
      Days: M W F</div>
    <button class="add-button" value="EE3755" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 3752</div>
    <div class="card-body">Time: 12:30p - 1:20p<br>
      Days: M W</div>
    <button class="add-button" value="EE3752" name="CE">Add</button>
  </div>
</div>
<div class="card-container">
  <div class="card">
    <div class="card-header">CSC 3102</div>
    <div class="card-body">Time: 9:00a - 10:20a<br>
      Days: T TH</div>
    <button class="add-button" value="CSC3102" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 4755</div>
    <div class="card-body">Time: 11:30a - 12:20p<br>
      Days: M W F</div>
    <button class="add-button" value="EE4755" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 3150</div>
    <div class="card-body">Time: 8:30a - 9:20a<br>
      Days: M W F</div>
    <button class="add-button" value="EE3150" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 4810</div>
    <div class="card-body">Time: 10:30a - 11:50a<br>
      Days: T TH</div>
    <button class="add-button" value="EE4810" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">CSC 4103</div>
    <div class="card-body">Time: 1:30p - 2:50p<br>
      Days: T TH</div>
    <button class="add-button" value="CSC4103" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 2120</div>
    <div class="card-body">Time: 9:30a - 10:20a<br>
      Days: M W F</div>
    <button class="add-button" value="EE2120" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 2130</div>
    <div class="card-body">Time: 11:30a - 12:20p<br>
      Days: M W F</div>
    <button class="add-button" value="EE2130" name="CE">Add</button>
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
    <button class="add-button" value="MATH1550" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">MATH 1552</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M T W TH</div>
    <button class="add-button" value="MATH1552_2" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">MATH 2070</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M T W TH F</div>
    <button class="add-button" value="MATH2070" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">MATH 2057</div>
    <div class="card-body">Time: 12:30p - 1:20p<br>
      Days: M W F</div>
    <button class="add-button" value="MATH2057" name="CE">Add</button>
  </div>
</div>
<div class="coreclasses">
  <strong>Physics</strong>
</div>
<div class="card-container">
  <div class="card">
    <div class="card-header">PHYS 2110</div>
    <div class="card-body">Time: 8:30a - 9:20a <br>
      Days: M W F</div>
    <button class="add-button" value="PHYS2110" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">PHYS 2113</div>
    <div class="card-body">Time: 7:30a - 8:20a<br>
      Days: </div>
    <button class="add-button" value="PHYS2113" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">PHYS 2108</div>
    <div class="card-body">Time: 8:30a - 11:20a<br>
      Days: M</div>
    <button class="add-button" value="PHYS2108" name="CE">Add</button>
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
    <button class="add-button" value="ENGL1001_41" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">ENGL 2000</div>
    <div class="card-body">Time: 9:30a - 10:20a<br>
      Days: M W F</div>
    <button class="add-button" value="ENGL2000" name="CE">Add</button>
  </div>
</div>
<div class="Humanities">
  <strong>EEC Breadth</strong>
</div>
<div class="card-container">
  <div class="card">
    <div class="card-header">EE 3160</div>
    <div class="card-body">Time: 9:30a - 10:20a<br>
      Days: M W F
      <br>
    </div>
    <button class="add-button" value="EE3160" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 3320</div>
    <div class="card-body">Time: 2:30p - 3:20p<br>
      Days: M W F
      <br>
    </div>
    <button class="add-button" value="EE3320" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 3410</div>
    <div class="card-body">Time: 4:30p - 5:50p<br>
      Days: M W
      <br>
    </div>
    <button class="add-button" value="EE3410" name="CE">Add</button>
  </div>
  <div class="card">
    <div class="card-header">EE 3610</div>
    <div class="card-body">Time: 10:30a - 11:20a<br>
      Days: M W F
      <br>
    </div>
    <button class="add-button" value="EE3610" name="CE">Add</button>
  </div>
</div>
</form>
</body>
<script>
</script>
</html>

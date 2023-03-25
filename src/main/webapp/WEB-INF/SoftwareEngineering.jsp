<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 3/22/2023
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
-<html>
<style>
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
    }

    .card-header {
        background-color: violet;
        font-size: 20px;
        font-weight: bold;
        padding: 10px;
        border-bottom: 1px solid black;
    }

    .card-body {
        padding: 10px;
    }

    .add-button {
        display: block;
        margin: 10px auto;
        padding: 5px 10px;
        background-color: lightblue;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .add-button:hover {
        background-color: blue;
        color: white;
    }
    a {
        font-family: Arial, sans-serif;
        font-size: 16px;
        text-align: center;
        color: black;
        display: block;
        margin: 20px;

    }
    a:hover {
        color: red;
    }
</style>
<body>
<a href ="https://www.lsu.edu/eng/current/resources/flowcharts/2023-2024_csc_seg_flowchart.pdf"> Computer Science FlowChart 23/24 </a>

<div class="card-container">
    <div class="card">
        <div class="card-header">CSC 1350</div>
        <div class="card-body">Time<br>
            Days:
            <br>
        </div>
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
</body>
<script>
</script>
</html>

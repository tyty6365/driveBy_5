<%--
  Created by IntelliJ IDEA.
  User: mhills6
  Date: 3/23/2023
  Time: 12:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Page Title</title>
    <h1><center>Welcome ${myVariable}</center></h1>
    <style>
        /* Set the width and height of the dropdown button */
        .dropbtn {
            width: 200px;
            height: 40px;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        /* Dropdown button on hover & focus */
        .dropbtn:hover, .dropbtn:focus {
            background-color: #3e8e41;
        }

        /* The container <div> - needed to position the dropdown content */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        /* Dropdown Content (Hidden by Default) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        /* Links inside the dropdown */
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        /* Change color of dropdown links on hover */
        .dropdown-content a:hover {background-color: #ddd;}

        /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Set the width and height of the box */
        .box {
            width: 60%;
            height: 500px;
            background-color: #f1f1f1;
            border-radius: 4px;
            margin: 20px;
            padding: 20px;
            float: right;
        }
    </style>
</head>
<body>
<h1>FlowChart</h1>

<!-- Dropdown buttons -->
<div class="dropdown">
    <button class="dropbtn">Computer Science</button>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">Mechanical Engineering</button>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">Chemical Engineering</button>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">Civil Engineering</button>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">Computer Engineering</button>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">Electrical Engineering</button>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>

<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.*"%>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="com.example.essentialdemo.Class" %>
<%@ page import="com.example.essentialdemo.User" %>
<%@ page import="com.example.essentialdemo.DropCourse" %>

<%--
  Created by IntelliJ IDEA.
  com.example.essentialdemo.User: mimic
  Date: 4/4/2023
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <style>
        .card {
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 16px;
            border-radius: 4px;
            margin-bottom: 16px;
            position: relative;
            display: inline-block;
            width: 23%;
            margin-right: 2%;
            vertical-align: top;
        }

        .card:last-child {
            margin-right: 0;
        }

        .card h2 {
            margin-top: 0;
        }

        .card p {
            margin: 0;
        }

        .drop-btn {
            position: absolute;
            bottom: 1px;
            right: 16px;
            background-color: red;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 8px;
            cursor: pointer;
            margin-top: 24px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function dropClass(className) {
            $.ajax({
                url: "MechanicalEngineeringServlet?className=" + className,
                method: "GET",
                success: function(response) {
                    location.reload();
                },
                error: function(xhr, status, error) {
                    alert("Error dropping class: " + error);
                }
            });
        }

        <%-- check if message exists and display pop-up if it does --%>

    </script>
</head>
<body>
<h1>Selected Classes:</h1>

<%
    System.out.println("JSP page displayed");
    User willc = (User) request.getAttribute("User");
    ArrayList<Class> pp1 = (ArrayList<Class>)request.getAttribute("pp");
    System.out.println(pp1);
%>

<%
    for(Class class1 : pp1){
     System.out.println("Trying out");
%>
<div class="card">
    <h2><%= class1.name %></h2>
    <p><%= "Section: " + class1.section %></p>
    <p><%= "Time: " + class1.cTime.start.fixedTime + " - " + class1.cTime.end.fixedTime + "   " + class1.cTime.dWeek %></p>
    <p><%= "Instructor: " + class1.instructor %></p>
    <p><%= "Building: " + class1.building %></p>
    <p><%= "Room: " + class1.room %></p>



    <button class="drop-btn" onclick="dropClass('<%= class1.name %>')">Drop Class</button>

</div>


<%
    }
%>




</body>
</html>

<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.*"%>
<%@ page import="java.lang.reflect.Array" %>
<%--
  Created by IntelliJ IDEA.
  User: mimic
  Date: 4/4/2023
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Selected Classes:</h1>



<%--    <% for(String className : (ArrayList<String>) request.getAttribute("classList")) { %>--%>
<%--  <li><%= className %></li>--%>
<%--  <% } %>--%>

<%--    ${scheduled}--%>

<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<%--&lt;%&ndash; iterate over the ArrayList of class objects &ndash;%&gt;--%>
<%--<c:forEach var="classInfo" items="${pp}">--%>
<%--&lt;%&ndash;<c:forEach var="classInfo" items="${scheduled}">&ndash;%&gt;--%>
<%--    <div class="class-box">--%>
<%--        <h2>${classInfo.name}</h2>--%>
<%--        <p>Section: ${classInfo.section}</p>--%>
<%--        <p>Credit Hours: ${classInfo.creditHours}</p>--%>
<%--        <p>Time: ${classInfo.startTime}${classInfo.startMorning ? 'am' : 'pm'} - ${classInfo.endTime}${classInfo.endMorning ? 'am' : 'pm'}</p>--%>
<%--        <p>Days: ${classInfo.days}</p>--%>
<%--        <p>Location: ${classInfo.building} ${classInfo.room}</p>--%>
<%--        <p>Instructor: ${classInfo.instructor}</p>--%>
<%--        <p>Prerequisites: ${classInfo.prereqs}</p>--%>
<%--    </div>--%>
<%--</c:forEach>--%>
<%



    ArrayList<Class2> myClasses = (ArrayList<Class2>) request.getAttribute("pp");


    %>


</body>
</html>

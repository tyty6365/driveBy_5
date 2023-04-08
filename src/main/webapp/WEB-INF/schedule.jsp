<%@ page import="java.util.ArrayList" %>

<html>
<head>
    <title>Schedule</title>
</head>
<body>
<h1>Selected Classes:</h1>
<ul>

    <% for(String className : (ArrayList<String>) request.getAttribute("classList")) { %>
    <li><%= className %></li>
    <% } %>
</ul>
</body>
</html>


<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Chemical Engineering</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Your Selected Classes:</h1>--%>

<%--    <ul>--%>
<%--        <%--%>
<%--            // get the list of selected course codes from the session--%>
<%--            ArrayList<String> selectedCourses = (ArrayList<String>) session.getAttribute("selectedCourses");--%>

<%--            // loop through the list and display each course code--%>
<%--            for (String courseCode : selectedCourses) {--%>
<%--        %>--%>
<%--        <li><%= courseCode %></li>--%>
<%--        <% } %>--%>
<%--    </ul>--%>

<%--    <%--%>
<%--        ArrayList<String> classes = (ArrayList<String>)request.getAttribute("classes");--%>
<%--        for (String class1: classes) {--%>
<%--        out.print("<li>" + class1 + "</li>");--%>
<%--        }--%>
<%--    %>--%>

<%--</body>--%>
<%--</html>--%>


<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Chemical Engineering</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Your Selected com.example.essentialdemo.Class:</h1>--%>
<%--${four}--%>
<%--</body>--%>
<%--</html>--%>


    <%--${one},--%>
<%--${two},--%>
<%-- ${three},--%>
<%--    ${four}--%>

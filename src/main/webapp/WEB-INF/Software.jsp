<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.*"%>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="com.example.essentialdemo.Class" %>

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
</head>
<body>
<h1>Selected Classes:</h1>


<%
    System.out.println("JSP page displayed");
    ArrayList<Class> pp1 = (ArrayList<Class>)request.getAttribute("pp");
    System.out.println(pp1);

%>
<%
    for( Class class1 : pp1){
    System.out.println(class1.name);
    System.out.println(class1.room);
    System.out.println(class1.instructor);
    %>
<p><%= class1.name%></p>
<p><%= class1.instructor%></p>
 <%
     }
%>



</body>
</html>

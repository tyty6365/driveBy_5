<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<form action="hello-servlet" method="get">
    <input type="text" name="number">
    <button type="submit">Submit</button>
</form>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>
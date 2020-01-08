<%--
  Created by IntelliJ IDEA.
  User: bryanwalsh
  Date: 1/7/20
  Time: 8:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Implicit Object Example</title>
</head>
<body>
<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>
</body>
</html>


<%--a parameter of name can be included after the url--%>
<%--line 18 will print this parameter--%>
<%--
  Created by IntelliJ IDEA.
  User: bryanwalsh
  Date: 1/7/20
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--instance variable definition--%>
<%! int counter = 0; %>

<%--code to execute on page load--%>
<% counter += 1; %>


<html>
<head>
    <title>Title</title>
</head>
<body>

<%--evaluates result of code inside angle brackets--%>
<h1>The current count is <%= counter %>.</h1>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

</body>
</html>

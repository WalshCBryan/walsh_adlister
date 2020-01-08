<%--
  Created by IntelliJ IDEA.
  User: bryanwalsh
  Date: 1/7/20
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/nav.jsp" />
<%--<%@ include file="partials/banner.jsp" %>--%>
<%--<%@ include file="partials/side_nav.jsp" %>--%>
<c:choose>
    <c:when test="${param.username == 'admin' && param.password == 'password'}">
        <c:redirect url="./profile.jsp">
            <c:param name="username" value="${param.username}"></c:param>
            <c:param name="password" value="${param.password}"></c:param>
        </c:redirect>
        <%--             A FORWARD IS BETTER: <jsp:forward page="./profile.jsp"/>--%>
    </c:when>
    <c:otherwise>
        <h1>User Login</h1>
        <h2>Username: ${param.username}</h2>
        <h2>Password: ${param.password}</h2>
        <form method="post" action="./login.jsp">
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" id="uname" name="username" required><br><br>
            <label for="pwd"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" id="pwd" name="password" required>
            <br><br>
            <button type="submit">Login</button>
        </form>
    </c:otherwise>
</c:choose>
</body>
</html>
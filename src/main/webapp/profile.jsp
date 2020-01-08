<%--
  Created by IntelliJ IDEA.
  User: bryanwalsh
  Date: 1/7/20
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/nav.jsp" />

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
</div>

</body>
</html>

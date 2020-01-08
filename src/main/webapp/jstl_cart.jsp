<%--
  Created by IntelliJ IDEA.
  User: bryanwalsh
  Date: 1/7/20
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSTL Example</title>
</head>
<body>
<h1>Your Shopping Cart</h1>

<%--choose is synonomous with establishing an if/else--%>
<c:choose>

    <%--  when = the IF   --%>
    <%--IF the cart is empty, will state the cart it empty--%>

    <c:when test="${cart.isEmpty()}">
        <h2>No items in your cart (yet).</h2>
    </c:when>

    <%--    otherwise = the ELSE  --%>
<%--    else if the cart has items, will disply item props --%>
    <c:otherwise>
        <c:forEach var="item" items="${cart.items}">
            <div class="item">
                <h3>${item.name}</h3>
                <p>${item.description}</p>
                <p>$${item.price}</p>
                <c:if test="${item.isOnSale}">
                    <p>This item is on sale!</p>
                </c:if>
            </div>
        </c:forEach>
    </c:otherwise>

    <%--    end of if/else--%>
</c:choose>

<%--if/else--%>
<c:choose>
<%--    if  --%>
    <c:when test="${boolean_expression_1}">
        <p>boolean_expression_1 was true</p>
    </c:when>

<%--    else if  --%>
    <c:when test="${boolean_expression_2}">
        <p>boolean_expression_1 was false, and boolean_expression_2 was true</p>
    </c:when>

<%--    final else  --%>
    <c:otherwise>
        <p>none of the above tests were true</p>
    </c:otherwise>
</c:choose>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Truong_Pv
  Date: 7/8/2021
  Time: 1:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Orders Management Application</title>
</head>
<body>
<center>
    <h1>Order Management</h1>
    <h2>
        <a href="/orders">List All Orders</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Order
                </h2>
            </caption>
            <c:if test="${order != null}">
                <input type="hidden" name="orderId" value="<c:out value='${order.orderId}' />"/>
            </c:if>
            <tr>
                <th>Date:</th>
                <td>
                    <input type="date" name="Date" size="45"
                           value="<c:out value='${order.date}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>CustomerID:</th>
                <td>
                    <input type="text" name="CustomerID" size="45"
                           value="<c:out value='${order.customerId}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Status:</th>
                <td>
                    <input type="text" name="Status" size="15"
                           value="<c:out value='${order.isPay}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

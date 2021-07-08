<%--
  Created by IntelliJ IDEA.
  User: Truong_Pv
  Date: 7/8/2021
  Time: 1:32 PM
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
        <a href="/orders?action=create">Add New Order</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Orders</h2></caption>
        <tr>
            <th>OrderID</th>
            <th>Date</th>
            <th>CustomerID</th>
            <th>Status</th>
            <th>Option</th>
        </tr>
        <c:forEach var="order" items="${listOrder}">
            <tr>
                <td><c:out value="${order.orderId}"/></td>
                <td><c:out value="${order.date}"/></td>
                <td><c:out value="${order.customerId}"/></td>
                <td><c:out value="${order.isPay}"/></td>
                <td>
                    <a href="/orders?action=edit&id=${order.orderId}">Edit</a>
                    <a href="/orders?action=delete&id=${order.orderId}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

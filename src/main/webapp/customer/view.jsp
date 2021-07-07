
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/customers" method="post">
    <input type="hidden" name="action" value="edit">
    <input type="text" name="id" value="${customer.customerID}">
    <input type="text" name="name" value="${customer.customerName}">
    <input type="text" name="age" value="${customer.customerPhone}">
    <input type="text" name="age" value="${customer.customerEmail}">
    <input type="text" name="age" value="${customer.userName}">
    <input type="text" name="age" value="${customer.password}">
    <button>come back</button>
</form>
</form>
</body>
</html>

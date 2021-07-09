<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Orders Management Application</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Patua+One">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            color: #333;
            background: #fafafa;
            font-family: "Patua One", sans-serif;
        }
        .contact-form {
            padding: 50px;
            margin: 30px 0;
        }
        .contact-form h1 {
            color: #19bc9d;
            font-weight: bold;
            margin: 0 0 15px;
        }
        .contact-form .form-control, .contact-form .btn {
            min-height: 38px;
            border-radius: 2px;
        }
        .contact-form .form-control:focus {
            border-color: #19bc9d;
        }
        .contact-form .btn-primary {
            color: #fff;
            min-width: 150px;
            font-size: 16px;
            background: #19bc9d;
            border: none;
        }
        .contact-form .btn-primary:hover {
            background: #15a487;
        }
        .contact-form .btn i {
            margin-right: 5px;
        }
        .contact-form label {
            opacity: 0.7;
        }
        .contact-form textarea {
            resize: vertical;
        }
        .hint-text {
            font-size: 15px;
            padding-bottom: 20px;
            opacity: 0.6;
        }
    </style>
</head>
<body  style="background: greenyellow">
<center>
    <h1>Orders Management</h1>
    <h2>
        <a href="/orders">List All Orders</a>
    </h2>
</center>

<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="contact-form">
                <h1>Contact Us</h1>
                <p class="hint-text">We'd love to hear from you, please drop us a line if you've any query or question.</p>
                <form action="" method="post">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="OrderID">OrderID</label>
                                <input type="text" class="form-control" name="OrderID" id="OrderID" required />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="Date">Date</label>
                                <input type="date" class="form-control" name="Date" id="Date" required/>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="CustomerID">CustomerID</label>

                                <input type="text" class="form-control" name="CustomerID" id="CustomerID" required/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Status">Status</label>
                        <input type="text" class="form-control" name="Status" id="Status" size="15" required/>
                    </div>

                    <button type="submit" class="btn btn-primary" value="Save"><i class="fa fa-paper-plane"></i> </button>
                </form>
            </div>
        </div>
    </div>
</div>

<%--<div align="center">--%>
<%--    <form method="post">--%>
<%--        <table border="1" cellpadding="5">--%>
<%--            <caption>--%>
<%--                <h2>Add New Order</h2>--%>
<%--            </caption>--%>
<%--            <tr>--%>
<%--                <th>OrderID:</th>--%>
<%--                <td>--%>
<%--                    <input type="text" name="OrderID" id="OrderID" size="45"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Date</th>--%>
<%--                <td>--%>
<%--                    <input type="date" name="Date" id="Date" size="45"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>CustomerID</th>--%>
<%--                <td>--%>
<%--                    <input type="text" name="CustomerID" id="CustomerID" size="15"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Status</th>--%>
<%--                <td>--%>
<%--                    <input type="text" name="Status" id="Status" size="15"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td colspan="2" align="center">--%>
<%--                    <input type="submit" value="Save"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--    </form>--%>
<%--</div>--%>
</body>
</html>
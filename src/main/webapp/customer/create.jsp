<%--
  Created by IntelliJ IDEA.
  User: MSI GAMING
  Date: 7/7/2021
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext' rel='stylesheet' type='text/css'>




    <style>
        body, html{
            height: 100%;
            background-repeat: no-repeat;
            background-color: #d3d3d3;
            font-family: 'Lato', Verdana;
        }

        .main{
            margin-top: 70px;
        }
        .form-group{
            margin-bottom: 15px;
        }



        input,
        input::-webkit-input-placeholder {
            font-size: 11px;
            padding-top: 3px;
        }

        .main-login{
            background-color: #E1FFE1;
            /* shadows and rounded borders */
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

        }

        label{
            margin-bottom: 15px;
            font-size:18px;
        }
        .main-center{
            margin-top: 30px;
            margin: 0 auto;
            max-width: 330px;
            padding: 40px 40px;

        }

        .login-button{
            margin-top: 5px;
        }

        .login-register{
            font-size: 12px;
            text-align: center;
            text-decoration:underline;
            color:#5CB85C;
            font-weight:bold;
        }
        .iconbk{
            background-color:#5CB85C;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row main">
        <div class="panel-heading">
            <div class="panel-title text-center">
                <h1 class="title">Create Account</h1>
                <hr />
            </div>
        </div>
        <div class="main-login main-center">
            <form class="form-horizontal" method="post" action="/customers">
                <input type="hidden" name="action" value="create"><br>
                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label">Name:</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon iconbk"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="customerName" id="name"  placeholder="Enter your Name here"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label">Phone Number:</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon iconbk"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                            <input type="number" class="form-control" name="customerPhone" id="phone"  placeholder="Enter your phone number here"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="cols-sm-2 control-label">Email:</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon iconbk"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="customerEmail" id="email"  placeholder="Enter your Email here"/>
                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <label for="username" class="cols-sm-2 control-label">Username:</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon iconbk"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="userName" id="username"  placeholder="Desired Username"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="cols-sm-2 control-label">Password:</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon iconbk"><i class="fa fa-lock fa-lg " aria-hidden="true"></i></span>
                            <input type="password" class="form-control" name="password" id="password"  placeholder="Password: Must be 8 char long"/>
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <button class="btn btn-success btn-lg btn-block login-button">Create Account</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>


</form>
</body>
</html>

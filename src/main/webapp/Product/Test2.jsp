<%--
  Created by IntelliJ IDEA.
  User: Windboy
  Date: 07/07/2021
  Time: 2:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Products - RedStore</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body{
            font-family: 'Poppins', sans-serif;
        }

        .navbar{
            display: flex;
            align-items: center;
            padding: 20px;
        }
        nav{
            flex: 1;
            text-align: right;
        }
        nav ul{
            display: block;
            list-style-type: none;
        }
        nav ul li{
            display: inline-block;
            margin-right: 20px;
        }
        a{
            text-decoration: none;
            color: #555;
        }
        p{
            color: #555;
        }
        .container{
            max-width: 1300px;
            margin: auto;
            padding-left: 25px;
            padding-right: 25px;
        }
        .row{
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .col-2{
            flex-basis: 50%;
            min-width: 300px;
        }
        .col-2 img{
            max-width: 100%;
            padding: 50px 0;
        }
        .col-2 h1{
            font-size: 50px;
            line-height: 60px;
            margin: 25px 0;

        }
        .btn{
            display: inline-block;
            background: #ff523b;
            color: #fff;
            padding: 8px 30px;
            margin: 30px 0;
            border-radius: 30px;
            transition: background 0.5s;
        }
        .btn:hover{
            background: #563434;

        }
        .header{
            background: radial-gradient(#fff,#ffd6d6);

        }
        .header row{
            margin-top: 70px;
        }
        .categories{
            margin: 70px 0;
        }
        .col-3{
            flex-basis: 30%;
            min-width: 250px;
            margin-bottom: 30px;

        }
        .col-3 img{
            width: 100%;
        }
        .small-container{
            max-width: 1080px;
            margin: auto;
            padding-left: 25px;
            padding-right: 25px;
        }
        .col-4{
            flex-basis: 25%;
            padding: 10px;
            min-width: 200px;
            margin-bottom: 50px;
            transition: transform 0.5s;
        }
        .col-4 img{
            width: 100%;
        }
        .title{
            text-align: center;
            margin: 0 auto 80px;
            position: relative;
            line-height: 60px;
            color: #555;
        }
        .title::after{
            content: '';
            background: #ff523b;
            width: 80px;
            height: 5px;
            border-radius: 5px;
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
        }
        h4{
            color: #555;
            font-weight: normal;
        }
        .col-4 p{
            font-size: 14px;
        }
        .rating .fa{
            color: #ff523b;
        }
        .col-4:hover{
            transform: translateY(-5px);
        }
        /* --------- offer ---------- */
        .offer{
            background: radial-gradient(#fff,#ffd6d6);
            margin-top: 80px;
            padding: 35px 0;
        }
        .col-2 .offer-img{
            padding: 50px;
        }
        small{
            color: #555;
        }
        /* ------------------testimonial-------------- */
        .testimonial{
            padding-top: 100px;
        }
        .testimonial .col-3{
            text-align: center;
            padding: 40px 20px;
            box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.1);
            transition: transform 0.5s;
            cursor: pointer;
        }
        .testimonial .col-3 img{
            width: 50px;
            margin-top: 20px;
            border-radius: 50%;
        }
        .testimonial .col-3:hover{
            transform: translateY(-10px);
        }
        .fa.fa-qoute-lef{
            font-size: 34px;
            color: #ff523b;
        }
        .col-3 p{
            font-size: 12px;
            margin: 12px 0;
            color: #777;
        }
        .testimonial .col-3 h3{
            font-weight: 600;
            color: #555;
            font-size: 16px;
        }
        /* ---------------brands-------------------- */
        .brands{
            margin: 100px auto;
        }
        .col-5{
            width: 160px;
        }
        .col-5 img{
            width: 100%;
            cursor: pointer;
            filter: grayscale(100%);
        }
        .col-5 img:hover{
            filter: grayscale(0);
        }
        /* ---------------footer------------ */

        .footer{
            background: #000;
            color: #8a8a8a;
            font-size: 14px;
            padding: 60px 0 20px;
        }
        .footer p{
            color: #8a8a8a;
        }
        .footer h3{
            color: #fff;
        }
        .footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4{
            min-width: 250px;
            margin-bottom: 20px;
        }
        .footer-col-1{
            flex-basis: 30%;
        }
        .footer-col-2{
            flex: 1;
            text-align: center;
        }
        .footer-col-2 img{
            width: 180px;
            margin-bottom: 20px;
        }
        .footer-col-3, .footer-col-4{
            flex-basis: 12%;
            text-align: center;
        }
        ul{
            list-style-type: none;
        }
        .app-logo{
            margin-top: 20px;
        }
        .app-logo img{
            width: 140px;
        }
        .footer hr{
            border: none;
            background: #b5b5b5;
            height: 1px;
            margin: 20px 0;
        }
        .Copyright{
            text-align: center;
        }
        .menu-icon{
            width: 28px;
            margin-left: 20px;
            display: none;
        }


        /* ---------------All Products Page------------------- */
        .row-2{
            justify-content: space-between;
            margin: 100px auto 50px;
        }
        select{
            border: 1px solid #ff523b;
            padding: 5px;
        }
        select:focus{
            outline: none;
        }
        .page-btn{
            margin: 0 auto 80px;

        }
        .page-btn span{
            display: inline-block;
            border: 1px solid #ff523b;
            margin-left: 10px;
            width: 40px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            cursor: pointer;
        }
        .page-btn span:hover{
            background: #ff523b;
            color: #fff;
        }

        /* -- ---------- single Products detail ----------- -- */
        .single-product{
            margin-top: 80px;

        }
        .single-product .col-2 img{
            padding: 0;
        }
        .single-product .col-2{
            padding: 20px;
        }
        .single-product h4{
            margin: 20px 0;
            font-size: 22px;
            font-weight: bold;
        }
        .single-product select{
            display: block;
            padding: 10px;
            margin-top: 20px;
        }
        .single-product input{
            width: 50px;
            height: 40px;
            padding-left: 10px;
            font-size: 20px;
            margin-right: 10px;
            border: 1px solid #ff523f;
        }
        input:focus{
            outline: none;
        }
        .single-product .fa{
            color: #ff523b;
            margin-left: 10px;
        }
        .small-img-row{
            display: flex;
            justify-content: space-between;
        }
        .small-img-rol{
            flex-basis: 24%;
            cursor: pointer;
        }
        /* -----------------cart item details------------------- - */
        .cart-page{
            margin: 80px auto;
        }
        table{
            width: 100%;
            border-collapse: collapse;

        }
        .cart-info{
            display: flex;
            flex-wrap: wrap;
        }
        th{
            text-align: center;
            padding: 5px;
            color: #fff;
            background: #ff523b;
            font-weight: normal;
        }
        td{
            padding: 10px 5px;
        }
        td input{
            width: 60px;
            height: 30px;
            padding: 5px;

        }
        td a{
            color: #ff523b;
            font-size: 12px;
        }
        td img {
            width: 80px;
            height: 80px;
            margin-right: 10px;
        }
        .total-price{
            display: flex;
            justify-content: flex-end;
        }
        .total-price table{
            border-top: 3px solid #ff523b;
            width: 100%;
            max-width: 350px;
        }
        td:last-child{
            text-align: right;
        }
        .th:last-child{
            text-align: right;
        }


        /* -----------------------Account-page------------------ */

        .account-page{
            padding: 50px 0;
            background: radial-gradient(#fff,#ffd6d6);

        }
        .form-container{
            background: #fff;
            width: 300px;
            height: 400px;
            position: relative;
            text-align: center;
            padding: 20px 0;
            margin: auto;
            overflow: hidden;
        }
        .form-container span{
            font-weight: bold;
            padding: 0 10px;
            color: #555;
            cursor: pointer;
            display: inline;
        }
        .form-btn{
            display: inline-block;
        }
        .form-container form{
            max-width: 300px;
            padding: 0 20px;
            position: absolute;
            top: 130px;
            transition: transform 1s;

        }
        form input{
            width: 100%;
            height: 30px;
            margin: 10px 0;
            padding: 0 10px;
            border: 1px solid #ccc;
        }
        form .btn{
            width: 100%;
            border: none;
            cursor: pointer;
            margin: 10px 0;
        }
        form .btn:focus{
            outline: none;
        }
        #LoginForm{
            left: -300px;
        }
        #RegForm{
            left: 0;
        }
        form a{
            font-size: 12px;
        }
        #Indicator{
            width: 100px;
            border: none;
            background: #ff523b;
            height: 3px;
            margin-top: 8px;
            transform: translateX(100px);
            transition: transform 1s;
        }


        /* --------------- Media query FOR menu -------------- */
        @media only screen and (max-width: 800px){
            nav ul{
                position: absolute;
                top: 70px;
                left: 0;
                background: #333;
                width: 100%;
                overflow: hidden;
                transition: max-height 0.5s;
            }
            nav ul li{
                display: block;
                margin-right: 50px;
                margin-top: 10px;
                margin-bottom: 10px;
            }
            nav ul li{
                color: #fff;
            }
            .menu-icon{
                display: block;
                cursor: pointer;
            }
        }
        /* --------------- Media query FOR less than 600 screen siza -------------- */
        @media only screen and (max-width: 600px){
            .row{
                text-align: center;
            }
            .col-2, .col-3, .col-4{
                flex-basis: 100%;
            }
            .single-product .row{
                text-align: left;
            }
            .single-product .col-2{
                padding: 20px 0;
            }
            .single-product h1{
                font-size: 26px;
                line-height: 32px;
            }
            .cart-info p{
                display: none;
            }
        }
        .button1 {
            background-image: linear-gradient(135deg, #008aff, #86d472);
            border-radius: 6px;
            box-sizing: border-box;
            color: #ffffff;
            display: block;
            height: 30px;
            font-size: 1.4em;
            font-weight: 600;
            padding: 4px;
            position: relative;
            text-decoration: none;
            width: 5em;
            z-index: 2;
        }

        .button1:hover {
            color: #fff;
        }

        .button1 .btn1 {
            align-items: center;
            background: #0e0e10;
            border-radius: 6px;
            display: flex;
            justify-content: center;
            height: 100%;
            transition: background 0.5s ease;
            width: 100%;
        }

        .button1:hover .btn1 {
            background: transparent;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="navbar">
        <div class="logo">
            <a href="index.html"><img src="images/logo.png" width="125px"></a>
        </div>
        <nav>
            <ul id="MenuItems">
                <li><a href="index.html">Home</a></li>
                <li><a href="/product">Products</a></li>
                <li><a href="">About</a></li>
                <li><a href="">Contact</a></li>
                <li><a href="account.html">Account</a></li>
            </ul>
        </nav>
        <a href="cart.html"><img src="images/cart.png" width="30px" height="30px"></a>
        <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
    </div>
</div>
</div>



<div class="small-container">

    <div class="row row-2">
        <h2>All Products</h2>
        <select>
            <option>Default Shop</option>
            <option>Short by price</option>
            <option>Short by popularity</option>
            <option>Short by Rating</option>
            <option>Short by Sale</option>
        </select>
    </div>

    <div class="row">
        <c:forEach items="${list}" var="p">
                <div class="col-4">
                    <img src="${p.productImage}">
                    <h4>${p.productName}</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <p>${p.productPrice}</p> <button style="cursor: pointer" class="button1">Order</button>
                </div>


            </c:forEach>
    </div>

    <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>4</span>
        <span>&#8594;</span>
    </div>
</div>
<!-- ------------footer----------- -->

<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col-1">
                <h3>Download Our App</h3>
                <p>Download App for Android and ios mobile phone</p>
                <div class="app-logo">
                    <img src="images/play-store.png">
                    <img src="images/app-store.png">
                </div>
            </div>
            <div class="footer-col-2">
                <img src="images/logo-white.png">
                <p>Our Purpose Is To Sustainably Make the Pleasure and
                    Benefits of Sports Accessible to the Many</p>
            </div>
            <div class="footer-col-3">
                <h3>Useful Links</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blog Post</li>
                    <li>Return Policy</li>
                    <li>Join Affiliate</li>
                </ul>
            </div>
            <div class="footer-col-4">
                <h3>Follow us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    <li>Youtube </li>
                </ul>
            </div>
        </div>
        <hr>
        <p class="Copyright">Copyright 2020 - By QuocHuy</p>
    </div>
    <!-- ------------------- js for toggle menu-------------- -->
    <script>
        var MenuItems = document.getElementById("MenuItems");

        MenuItems.style.maxHeight = "0px";

        function menutoggle() {
            if (MenuItems.style.maxHeight == "0px") {
                MenuItems.style.maxHeight = "200px";
            }
            else {
                MenuItems.style.maxHeight = "0px";
            }
        }

    </script>
</div>
</body>


</html>

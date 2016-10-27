<%--
    Document   : header
    Created on : Oct 25, 2016, 1:03:55 AM
    Author     : Azik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js"></script>
        <link href="${pageContext.request.contextPath}/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />

        <script src="${pageContext.request.contextPath}/resources/responsiveslides.min.js"></script>
        <script type="text/javascript">

jQuery(document).ready(function ($) {
    $(".scroll").click(function (event) {
        event.preventDefault();
        $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
    });
});
        </script>


        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/megamenu.js"></script>
        <script>$(document).ready(function () {
    $(".megamenu").megamenu();
});</script>
        <script src="${pageContext.request.contextPath}/resources/js/simpleCart.min.js"></script>

    </head>
    <body>
        <div class="top_bg">
            <div class="container">
                <div class="header_top-sec">
                    <div class="top_right">
                        <ul>
                            <li><a href="contact.html">Contact</a></li>|
                            <li><a href="login.html">Track Order</a></li>
                        </ul>
                    </div>
                    <div class="top_left">
                        <ul>
                            <li class="top_link">Email:<a href="mailto:info@example.com">info@example.com</a></li>|
                            <li class="top_link"><a href="login.html">My Account</a></li>					
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- top-header -->
        <!-- logo-cart -->
        <div class="header_top">
            <div class="container">
                <div class="logo">
                    <a href="index.html">Pendent Store</a>			 
                </div>
                <div class="header_right">
                    <div class="cart box_1">
                        <a href="checkout.html">
                            <h3> <div class="total">
                                    <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
                                <img src="${pageContext.request.contextPath}/resources/images/cart1.png" alt=""/></h3>
                        </a>
                        <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                        <div class="clearfix"> </div>
                    </div>				 
                </div>
                <div class="clearfix"></div>	
            </div>
        </div>
    </body>
</html>

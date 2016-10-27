<%-- 
    Document   : banner
    Created on : Oct 25, 2016, 3:39:33 PM
    Author     : Azik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <<!-- banner -->
        <div class="banner">
            <div class="container">
                <!-- Slider-starts-Here -->
                <script src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider3").responsiveSlides({
                            auto: true,
                            pager: false,
                            nav: true,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });

                    });
                </script>
                <!--//End-slider-script -->
                <div  id="top" class="callbacks_container">
                    <ul class="rslides" id="slider3">
                        <li>
                            <div class="banner-info">
                                <div class="banner-info1">
                                    <div class="banner-inf">
                                        <h1>maiores alias consequatur aut perferendis</h1>
                                        <p>Itaque earum rerum hic tenetur a sapiente delectus, 
                                            ut aut reiciendis voluptatibus maiores alias consequatur 
                                            aut perferendis doloribus asperiores repellat.</p>
                                        <div class="buy">
                                            <a href="single.html">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <div class="banner-info1">
                                    <div class="banner-inf">
                                        <h1>asperiores alias consequatur aut perferendis</h1>
                                        <p>Alias earum rerum hic tenetur a sapiente delectus, 
                                            ut aut reiciendis voluptatibus maiores alias consequatur 
                                            aut perferendis doloribus asperiores repellat.</p>
                                        <div class="buy">
                                            <a href="single.html">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <div class="banner-info1">
                                    <div class="banner-inf">
                                        <h1>doloribus alias consequatur aut perferendis</h1>
                                        <p>Repellat earum rerum hic tenetur a sapiente delectus, 
                                            ut aut reiciendis voluptatibus maiores alias consequatur 
                                            aut perferendis doloribus asperiores repellat.</p>
                                        <div class="buy">
                                            <a href="single.html">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!-- cate -->
        <div class="cate">
            <div class="container">
                <div class="cate-left">
                    <h3>Necklaces<span>Our Catelog</span></h3>
                </div>
                <div class="cate-right">
                    <!-- slider -->
                    <ul id="flexiselDemo1">			
                        <li>
                            <div class="sliderfig-grid">
                                <img src="images/a.jpg" alt=" " class="img-responsive" />
                            </div>
                        </li>
                        <li>
                            <div class="sliderfig-grid">
                                <img src="images/b.jpg" alt=" " class="img-responsive" />
                            </div>
                        </li>
                        <li>
                            <div class="sliderfig-grid">
                                <img src="images/c.jpg" alt=" " class="img-responsive" />
                            </div>
                        </li>
                        <li>
                            <div class="sliderfig-grid">
                                <img src="images/d.jpg" alt=" " class="img-responsive" />
                            </div>
                        </li>
                    </ul>
                    <script type="text/javascript">
                        $(window).load(function () {
                            $("#flexiselDemo1").flexisel({
                                visibleItems: 4,
                                animationSpeed: 1000,
                                autoPlay: true,
                                autoPlaySpeed: 3000,
                                pauseOnHover: true,
                                enableResponsiveBreakpoints: true,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint: 480,
                                        visibleItems: 3
                                    },
                                    landscape: {
                                        changePoint: 640,
                                        visibleItems: 4
                                    },
                                    tablet: {
                                        changePoint: 768,
                                        visibleItems: 3
                                    }
                                }
                            });

                        });
                    </script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.flexisel.js"></script>
                </div>
                <!-- //slider -->
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //cate -->
        <!-- cate-bottom -->
        <div class="cate-bottom">
            <div class="container">
                <div class="cate-bottom-info">
                    <h3>New Collections</h3>
                    <p>consequuntur magni dolores eos qui ratione voluptatem doloribus asperiores 
                        repellat molestiae non recusandae
                        <span>perferendis doloribus asperiores repellat</span></p>
                    <div class="buy let">
                        <a href="single.html">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //cate-bottom -->
        <!-- welcome -->
        <div class="welcome">
            <div class="container">
                <div class="welcome-info">
                    <h3>Welcome To Our Store!</h3>
                    <p class="non">Repellat molestiae non recusandae<span>Asperiores repellat</span></p>
                    <p class="rep">Perferendis doloribus asperiores repellat</p>
                    <div class="buy wel">
                        <a href="single.html">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //welcome -->
        <!-- banner-bottom1 -->
        <div class="banner-bottom1">
            <div class="container">
                <div class="banner-bottom1-grids">
                    <div class="banner-bot-grd">
                        <div class="col-md-7 banner-bot-grid">
                            <div class="jel-video">
                                <!--<iframe src="https://player.vimeo.com/video/45541146" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>-->
                            </div>
                        </div>
                        <div class="col-md-5 banner-bot-grid">
                            <div class="banner-bot-grid1">
                                <img src="images/a3.jpg" alt=" " class="img responsive" />
                                <div class="pos-absolt">
                                    <h3>omnis voluptas assumenda</h3>
                                    <p>Temporibus autem quibusdam et aut officiis debitis aut 
                                        rerum necessitatibus saepe eveniet ut et voluptates.</p>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-md-4 banner-bottom1-grid">
                        <div class="banner-bottom1-grid1">
                            <img src="images/6.jpg" alt=" " class="img-responsive" />
                            <div class="head-para">
                                <h3>omnis voluptas assumenda</h3>
                                <p>Temporibus autem quibusdam et aut officiis debitis aut 
                                    rerum necessitatibus saepe eveniet ut et voluptates.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 banner-bottom1-grid">
                        <div class="banner-bottom1-grid1">
                            <img src="images/5.jpg" alt=" " class="img-responsive" />
                            <div class="head-para">
                                <h3>omnis voluptas assumenda</h3>
                                <p>Temporibus autem quibusdam et aut officiis debitis aut 
                                    rerum necessitatibus saepe eveniet ut et voluptates.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 banner-bottom1-grid">
                        <div class="banner-bottom1-grid1">
                            <img src="images/7.jpg" alt=" " class="img-responsive" />
                            <div class="head-para">
                                <h3>omnis voluptas assumenda</h3>
                                <p>Temporibus autem quibusdam et aut officiis debitis aut 
                                    rerum necessitatibus saepe eveniet ut et voluptates.</p>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- //banner-bottom1 -->
    </body>
</html>

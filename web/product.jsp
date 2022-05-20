<%-- 
    Document   : product
    Created on : June 23, 2021, 9:26:21 PM
    Author     : DANGKHOA
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- bootstrap forslide -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">       
        <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <style>
            .carousel-item {
                
                   height: 500px
            }
            .carousel-inner img {
                width: 100%;
               
            }
            .carousel-caption {
                position: absolute;
                top: 10%;
                left: 5%;
                text-align: left;
             
                max-width: 300px;
                right: auto;
                padding:5px;
            }
            .carousel-caption h1 {
                font-size: 400%;
                text-transform: uppercase;
                text-shadow: 5px 5px 15px #000;
            }
            .carousel-caption h3 {
                font-size: 200%;	
                text-shadow: 2px 2px 10px #000;
            }
            .btn-primary {
                background-color: rgb(82,64,120);
                border: 1px solid white;
            }
            .btn-primary:hover {
                background-color: rgb(62,44,100);
                border: 1px solid w
                </style>

                <!------ Include the above in your HEAD tag ---------->
                <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
                <link href="css/style.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <script src="js/manager.js" type="text/javascript"></script>

                <!--begin of menu-->
                <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                    <div class="container">
                        <a class="navbar-brand" href="HomeProductServlet"> <img src="https://www.logomyway.com/logos_new/11461/ss5_057334343168.jpg" height="50px"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                            <ul class="navbar-nav mr-auto">

                                <c:if test="${sessionScope.userdata != null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="" data-toggle="modal" >    Hello ${sessionScope.userdata.getName()} </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="LoadAllOrderServlet?user=${userdata.userID}">Your order</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="LogoutCustomerServlet" onclick="return confirm('Do you want to logout?')">Logout</a>
                                    </li>
                                </c:if>

                                <c:if test="${sessionScope.userdata == null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="LoginServlet" >Login</a>
                                    </li>
                                </c:if>


                            </ul>


                        </div>
                        <form action="SearchProductServletbyCus" method="post" class="form-inline my-2 my-lg-0">
                            <div class="input-group input-group-sm" >
                                <input name="txtSearch" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                                <div class="input-group-append" id="inputGroup-sizing-sm">
                                    <button type="submit" class="btn btn-secondary btn-number" >
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                        </svg>
                                    </button>
                                </div>
                            </div>



                        </form>
                        <a  class="btn btn-success btn-sm ml-3" href="LoadCartServlet">
                            <i class="fa fa-shopping-cart" ></i> Cart
                            <!--                            <span class="badge badge-light">3</span>-->
                        </a>
                    </div>
                </nav>
                <!--      <section class="jumbotron text-center">
                          <div class="container">
                              <h1 class="jumbotron-heading">Siêu thị giày chất lượng cao</h1>
                              <p class="lead text-muted mb-0">Uy tín tạo nên thương hiệu với hơn 10 năm cung cấp các sản phầm giày nhập từ Trung Quốc</p>
                          </div>
                      </section>
                <!--end of menu-->

                <div id="slides" class="carousel slide" data-ride="carousel">
                    <ul class="carousel-indicators">
                        <li data-target="#slides" data-slide-to="0" class="active"></li>
                        <li data-target="#slides" data-slide-to="1"></li>
                       
                    </ul>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enSG/Images/YEEZY_BOOST_700_MNVN_BLUE_TINT_HP_DT_tcm207-711640.jpg">
                            <div class="carousel-caption">
                                <h1 class="display-4 text-dark ">Adidas///</h1>
                                <h3>YEEZY BOOST 700 MNVN BLUE TINT</h3>
                                <c:set var="namePro" value="YEEZY BOOST 700"/>
                                <c:set var="imgShoes" value="https://assets.adidas.com/images/w_840,h_840,q_auto:sensitive/ab840828e1a8456789cbad5500ffa17e_9366/GZ0711_01_standard.jpg"/>
                                <c:set var="pricePro" value="600"/>
                                <a type="button" href="DetailProductServlet?name=${namePro}&img=${imgShoes}&price=${pricePro}" class="btn  btn-dark btn-lg">Buy Now </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enSG/Images/specialist-sports-ss21-olympics-tokyo-collection-launch-hp-1-mh-d_tcm207-692740.jpg">
                        </div>
                        
                    </div>
                </div>
                <!-- slide  -->

                <div class="container">
                    <div class="row">
                        <div class="col">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                                    <li class="breadcrumb-item"><a href="#">Category</a></li>
                                    <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="card bg-light mb-3">
                                <div class="card-header bg-light text-black text-uppercase text-bold"><i class="fa fa-list"></i> Categories</div>
                                <ul class="list-group category_block">
                                    <c:forEach items="${ProductsCategory}" var="o">
                                        <form action="GetAllProductbyCategory"  method="Post">
                                            <input name="idCa" value="${o.idCategory}" type="hidden">
                                            <li class="list-group-item text-white"><button type="submit" class="btn btn-link text-dark" >${o.nameCategory}</button></li>
                                        </form>
                                    </c:forEach>

                                </ul>
                            </div>
                            <div class="card bg-light mb-3">
                                <div class="card-header bg-dark text-white text-uppercase">Last product</div>
                                <div class="card-body">
                                    <img class="img-fluid" src="${o.imgShoes}" />
                                    <h5 class="card-title">${o.nameProduct}</h5>
                                    <p class="card-text">${o.title}</p>
                                    <p class="bloc_left_price">${o.priceProduct} $</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-9">
                            <div class="row">
                                <c:forEach items="${Products}" var="o">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="card">
                                            <img class="card-img-top" src="${o.imgShoes}" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title text-dark  "><a >${o.nameProduct}</a></h4>

                                                <div class="row">
                                                    <div class="col">
                                                        <p class="btn btn-light btn-block">${o.priceProduct} $</p>
                                                    </div>
                                                    <div class="col">
                                                        <a href="DetailProductServlet?name=${o.nameProduct}&img=${o.imgShoes}&price=${o.priceProduct}&des=${o.desProduct}" class="btn btn-dark btn-block" >View detail</a>
                                                    </div>
                                                </div>
                                            </div>



                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Footer -->
                <footer class="text-light">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-lg-4 col-xl-3">
                                <h5>About</h5>
                                <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                                <p class="mb-0">
                                    Ceci est un magasin de chaussures qui ne vend que des produits réels.
                                </p>
                            </div>

                           
                            <div class="col-md-4 col-lg-3 col-xl-3">
                                <h5>Contact</h5>
                                <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                                <ul class="list-unstyled">
                                    <li><i class="fa fa-home mr-2"></i> Stash Shoes</li>
                                    <li><i class="fa fa-envelope mr-2"></i> stashshoes1999@gmail.com</li>
                                    <li><i class="fa fa-phone mr-2"></i> + 09 01 08 50 27</li>
                                    <li><i class="fa fa-print mr-2"></i> + 09 01 08 67 89</li>
                                </ul>
                            </div>
                           
                        </div>
                    </div>
                </footer>

            </body>
        </html>


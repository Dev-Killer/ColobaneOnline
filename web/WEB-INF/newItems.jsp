<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="metaHead.jsp">
	<jsp:param value="title" name="Colobane Online"/>
</jsp:include>
</head>

<body class="cnt-home">

<!-- ============================================== HEADER ============================================== -->
<%@ include file="header.jsp" %>
<!-- ============================================== HEADER : END ============================================== --> 

<!-- ============================================== HEADER : END ============================================== -->

<div class="breadcrumb">
  <div class="container">
    <div class="breadcrumb-inner">
      <ul class="list-inline list-unstyled">
        <li><a href="/ColobaneOnline/">Accueil</a></li>
        <li class='active'>Nouveauté</li>
      </ul>
    </div>
    <!-- /.breadcrumb-inner --> 
  </div>
  <!-- /.container --> 
</div>
<!-- /.breadcrumb -->

<div class="body-content outer-top-vs mb-5" id="top-banner-and-menu" style="margin-bottom: 5%;">
  <div class="container">
    <div class="row"> 
      <!-- ============================================== SIDEBAR ============================================== -->
      <%@ include file="allSidebar.jsp" %>
      <!-- /.sidemenu-holder --> 
      <!-- ============================================== SIDEBAR : END ============================================== --> 
      <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
            <section class="section new-arriavls">
              <h3 class="section-title">Dernière Nouveauté</h3>
              <div class="clearfix filters-container m-t-10">
                <div class="row">
                  <div class="col col-sm-6 col-md-3 col-lg-3 col-xs-6">
                    <div class="filter-tabs">
                      <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                        <li class="active"> <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Grid</a> </li>
                        <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-bars"></i>List</a></li>
                      </ul>
                    </div>
                    <!-- /.filter-tabs -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-sm-12 col-md-5 col-lg-5 hidden-sm">
                    <div class="col col-sm-6 col-md-6 no-padding">
                      <div class="lbl-cnt"> <span class="lbl">Sort by</span>
                      <div class="fld inline">
                        <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                          <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> Position <span class="caret"></span> </button>
                          <ul role="menu" class="dropdown-menu">
                            <li role="presentation"><a href="#">position</a></li>
                            <li role="presentation"><a href="#">Price:Lowest first</a></li>
                            <li role="presentation"><a href="#">Price:HIghest first</a></li>
                            <li role="presentation"><a href="#">Product Name:A to Z</a></li>
                          </ul>
                        </div>
                      </div>
                      <!-- /.fld -->
                    </div>
                    <!-- /.lbl-cnt -->
                  </div>
                  <!-- /.col -->
                  <div class="col col-sm-6 col-md-6 no-padding hidden-sm hidden-md">
                    <div class="lbl-cnt"> <span class="lbl">Show</span>
                    <div class="fld inline">
                      <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                        <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> 1 <span class="caret"></span> </button>
                        <ul role="menu" class="dropdown-menu">
                          <li role="presentation"><a href="#">1</a></li>
                          <li role="presentation"><a href="#">2</a></li>
                          <li role="presentation"><a href="#">3</a></li>
                          <li role="presentation"><a href="#">4</a></li>
                          <li role="presentation"><a href="#">5</a></li>
                          <li role="presentation"><a href="#">6</a></li>
                          <li role="presentation"><a href="#">7</a></li>
                          <li role="presentation"><a href="#">8</a></li>
                          <li role="presentation"><a href="#">9</a></li>
                          <li role="presentation"><a href="#">10</a></li>
                        </ul>
                      </div>
                    </div>
                    <!-- /.fld -->
                  </div>
                  <!-- /.lbl-cnt -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.col -->
              <div class="col col-sm-6 col-md-4 col-xs-6 col-lg-4 text-right">
                <div class="pagination-container">
                  <ul class="list-inline list-unstyled">
                    <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                    <li><a href="#">1</a></li>
                    <li class="active"><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                  </ul>
                  <!-- /.list-inline -->
                </div>
                <!-- /.pagination-container --> </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <div class="search-result-container ">
              <div id="myTabContent" class="tab-content category-list">
                <div class="tab-pane active " id="grid-container">
                  <div class="category-product">
                    <div class="row">
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p1.jpg" alt="">
                                    <img src="assets/images/products/p1_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag new"><span>new</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p2.jpg" alt="">
                                    <img src="assets/images/products/p2_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag sale"><span>sale</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p3.jpg" alt="">
                                    <img src="assets/images/products/p3_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p4.jpg" alt="">
                                    <img src="assets/images/products/p4_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p5.jpg" alt="">
                                    <img src="assets/images/products/p5_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  
                                  <a href="detail.html">
                                    <img src="assets/images/products/p6.jpg" alt="">
                                    <img src="assets/images/products/p6_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  
                                  <a href="detail.html">
                                    <img src="assets/images/products/p7.jpg" alt="">
                                    <img src="assets/images/products/p7_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  
                                  <a href="detail.html">
                                    <img src="assets/images/products/p8.jpg" alt="">
                                    <img src="assets/images/products/p8_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p9.jpg" alt="">
                                    <img src="assets/images/products/p9_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  
                                  <a href="detail.html">
                                    <img src="assets/images/products/p10.jpg" alt="">
                                    <img src="assets/images/products/p10_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p11.jpg" alt="">
                                    <img src="assets/images/products/p11_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      
                      <!-- /.item -->
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p15.jpg" alt="">
                                    <img src="assets/images/products/p15_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p14.jpg" alt="">
                                    <img src="assets/images/products/p14_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p13.jpg" alt="">
                                    <img src="assets/images/products/p13_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p5.jpg" alt="">
                                    <img src="assets/images/products/p5_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="detail.html">
                                    <img src="assets/images/products/p12.jpg" alt="">
                                    <img src="assets/images/products/p12_hover.jpg" alt="" class="hover-image">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                      <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                    </li>
                                    <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                    <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                  </ul>
                                </div>
                                <!-- /.action -->
                              </div>
                              <!-- /.cart -->
                            </div>
                            <!-- /.product -->
                            
                          </div>
                          <!-- /.products -->
                        </div>
                      </div>
                      <!-- /.item -->
                    </div>
                    <!-- /.row -->
                  </div>
                  <!-- /.category-product -->
                  
                </div>
                <!-- /.tab-pane -->
                
                <div class="tab-pane "  id="list-container">
                  <div class="category-product">
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p3.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p4.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p5.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p6.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p7.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p8.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p9.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p10.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p11.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p12.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p13.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                    <div class="category-product-inner">
                      <div class="products">
                        <div class="product-list product">
                          <div class="row product-list-row">
                            <div class="col col-sm-3 col-lg-3">
                              <div class="product-image">
                                <div class="image"> <img src="assets/images/products/p14.jpg" alt=""> </div>
                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-9 col-lg-9">
                              <div class="product-info">
                                <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                <!-- /.product-price -->
                                <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra.</div>
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                                
                              </div>
                              <!-- /.product-info -->
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-list-row -->
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->
                    
                  </div>
                  <!-- /.category-product -->
                </div>
                <!-- /.tab-pane #list-container -->
              </div>
              <!-- /.tab-content -->
              <div class="clearfix filters-container bottom-row">
                <div class="text-right">
                  <div class="pagination-container">
                    <ul class="list-inline list-unstyled">
                      <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                      <li><a href="#">1</a></li>
                      <li class="active"><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                    <!-- /.list-inline -->
                  </div>
                  <!-- /.pagination-container --> </div>
                  <!-- /.text-right -->
                  
                </div>
                <!-- /.filters-container -->
                
              </div>
              <!-- /.home-owl-carousel -->
            </section>
      </div>
    </div>
  </div>
</div>
<!-- /#top-banner-and-menu --> 

        <!-- ============================================== INFO BOXES ============================================== -->
        
<%@ include file="footer.jsp"%>
<!-- ============================================================= FOOTER : END============================================================= --> 

<!-- For demo purposes â can be removed on production --> 

<!-- For demo purposes â can be removed on production : End --> 

<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<%@ include file="script.jsp"%>
</body>
</html>
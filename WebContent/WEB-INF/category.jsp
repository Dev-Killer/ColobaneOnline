<!DOCTYPE html>
<html lang="fr">
  <head>
    <jsp:include page="metaHead.jsp">
    <jsp:param name="title" value="Colobane Online"/>
    </jsp:include>
  </head>
  <body class="cnt-home">
    <!-- ============================================== HEADER ============================================== -->
    <jsp:include page="header.jsp">
		<jsp:param name="cart" value="${ count }"/>
	</jsp:include>
    <!-- ============================================== HEADER : END ============================================== -->
    <!-- ============================================== HEADER : END ============================================== -->
    <div class="breadcrumb">
      <div class="container">
        <div class="breadcrumb-inner">
          <ul class="list-inline list-unstyled">
            <li><a href="/ColobaneOnline/">Accueil</a></li>
            <li class='active'>Catégories</li>
          </ul>
        </div>
        <!-- /.breadcrumb-inner -->
      </div>
      <!-- /.container -->
    </div>
    <!-- /.breadcrumb -->
    <div class="body-content outer-top-xs">
      <div class='container'>
        <div class='row'>
          <div class='col-xs-12 col-sm-12 col-md-3 sidebar'>
            <!-- ================================== TOP NAVIGATION ================================== -->
            <%@ include file="sideCateg.jsp" %>
            <!-- /.side-menu -->
            <!-- ================================== TOP NAVIGATION : END ================================== -->
            <div class="sidebar-module-container">
              <div class="sidebar-filter">
                <!-- ============================================== SIDEBAR CATEGORY ============================================== -->
                <div class="sidebar-widget">
                  <h3 class="section-title">Filtres</h3>
                  <div class="widget-header">
                    <h4 class="widget-title">Prix</h4>
                  </div>
                  <div class="sidebar-widget-body m-t-10">
                    <div class="price-range-holder"> <span class="min-max"> <span class="pull-left">1000.0F</span> <span class="pull-right">100000.0F</span> </span>
                    <input type="text" id="amount" style="border:0; color:#666666; font-weight:bold;text-align:center;">
                    <input type="text" class="price-slider" value="" >
                  </div>
                  <!-- /.price-range-holder -->
                  <a href="#" class="lnk btn btn-primary">Show Now</a> </div>
                  <!-- /.sidebar-widget-body -->
                </div>
                <!-- /.sidebar-widget -->
                
                <!-- /.Testimonials -->
                <div class="sidebar-widget  outer-top-vs ">
                  <div id="advertisement" class="advertisement">
                    <div class="item">
                      <div class="avatar"><img src="assets/images/testimonials/member1.png" alt="Image"></div>
                      <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore.<em>"</em></div>
                      <div class="clients_author">John Doe <span>Abc Company</span> </div>
                      <!-- /.container-fluid -->
                    </div>
                    <!-- /.item -->
                    
                    <div class="item">
                      <div class="avatar"><img src="assets/images/testimonials/member3.png" alt="Image"></div>
                      <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore.<em>"</em></div>
                      <div class="clients_author">Stephen Doe <span>Xperia Designs</span> </div>
                    </div>
                    <!-- /.item -->
                    
                    <div class="item">
                      <div class="avatar"><img src="assets/images/testimonials/member2.png" alt="Image"></div>
                      <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore.<em>"</em></div>
                      <div class="clients_author">Saraha Smith <span>Datsun &amp; Co</span> </div>
                      <!-- /.container-fluid -->
                    </div>
                    <!-- /.item -->
                    
                  </div>
                  <!-- /.owl-carousel -->
                </div>
                
                <!-- ============================================== Testimonials: END ============================================== -->
                <!-- /.sidebar-widget -->
                <!-- ============================================== NEWSLETTER: END ============================================== -->
                
                
              </div>
              <!-- /.sidebar-filter -->
            </div>
            <!-- /.sidebar-module-container -->
          </div>
          <!-- /.sidebar -->
          <div class="col-xs-12 col-sm-12 col-md-9 rht-col">
            <!-- ========================================== SECTION â€“ HERO ========================================= -->
            
            <div id="category" class="category-carousel hidden-xs">
              <div class="item">
                <div class="image"> <img src="assets/images/banners/cat-banner-1.jpg" alt="" class="img-responsive"> </div>
                <div class="container-fluid">
                  <div class="caption vertical-top text-left">
                    <div class="big-text"> Big Sale </div>
                    <div class="excerpt hidden-sm hidden-md"> Save up to 49% off </div>
                    <div class="excerpt-normal hidden-sm hidden-md"> Lorem ipsum dolor sit amet, consectetur adipiscing elit </div>
                    <div class="buy-btn"><a href="#" class="lnk btn btn-primary">Show Now</a></div>
                  </div>
                  <!-- /.caption -->
                </div>
                <!-- /.container-fluid -->
              </div>
            </div>
            
            
            <div class="clearfix filters-container m-t-10">
              <div class="row">
                <!-- /.col -->
                <div class="col col-sm-12 col-md-5 col-lg-5 hidden-sm">
                  <div class="col col-sm-6 col-md-6 no-padding">
                    <div class="lbl-cnt"> <span class="lbl">Trier Par</span>
                    <div class="fld inline">
                      <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                        <button data-toggle="dropdown" type="button" class="btn dropdown-toggle">
                        <c:choose>
                        <c:when test="${ sort == 1}">
                        Prix Croissant
                        </c:when>
                        <c:when test="${ sort == 2}">
                        Prix Décroissant
                        </c:when>
                        <c:when test="${ sort == 3}">
                        Nom A à Z
                        </c:when>
                        <c:when test="${ sort == 4}">
                        Nom Z à A
                        </c:when>
                        <c:otherwise>
                        Par Défaut
                        </c:otherwise>
                        </c:choose><span class="caret"></span> </button>
                        <ul role="menu" class="dropdown-menu">
                          <li role="presentation"><a href="/ColobaneOnline/categories?categ=${ rep }">Par Défaut</a></li>
                          <li role="presentation"><a href="/ColobaneOnline/categories?action=lower&categ=${ rep }">Prix Croissant</a></li>
                          <li role="presentation"><a href="/ColobaneOnline/categories?action=upper&categ=${ rep }">Prix Décroissant</a></li>
                          <li role="presentation"><a href="/ColobaneOnline/categories?action=atoz&categ=${ rep }">Nom A à Z</a></li>
                          <li role="presentation"><a href="/ColobaneOnline/categories?action=ztoa&categ=${ rep }">Nom Z à A</a></li>
                        </ul>
                      </div>
                    </div>
                    <!-- /.fld -->
                  </div>
                  <!-- /.lbl-cnt -->
                </div>
                <!-- /.col -->
                <!-- /.col -->
              </div>
              <!-- /.col -->
              <c:if test="${page > 1}">
              <div class="col col-sm-6 col-md-4 col-xs-6 col-lg-4 text-right">
                <div class="pagination-container">
                  <ul class="list-inline list-unstyled">
                    <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                    <li class="current active" id="id1"><a href="#">1</a></li>
                    <c:forEach var="i" begin="2" end="${page}" step="1">
                    <li class="current" id="id${i}"><a href="#"><c:out value="${i}"/></a></li>
                    </c:forEach>
                    <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                  </ul>
                  <!-- /.list-inline -->
                </div>
                <!-- /.pagination-container -->
                <!-- /.col -->
              </div>
              </c:if>
              <!-- /.row -->
            </div>
            <div class="search-result-container ">
              <div id="myTabContent" class="tab-content category-list">
                <div class="tab-pane active" id="grid-container1">
                  <div class="category-product">
                    <div class="row">
                      <c:set var="trent" value="0" scope="page"/>
                      <c:forEach items="${articles}" var="article" begin="0" end="15" varStatus="status">
                      <c:set var="trent" value="${status.end}" />
                      <c:choose>
                      <c:when test="${(status.index % 5) == 2}">
                      <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="item">
                          <div class="products" style="width: 100%;">
                            <div class="product">
                              <div class="product-image">
                                <div class="image">
                                  <a href="/ColobaneOnline/detail?id=${article.idArticle}">
                                    <img src="${article.image}" alt="">
                                  </a>
                                </div>
                                <!-- /.image -->
                                
                                <div class="tag new"><span>new</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="/ColobaneOnline/detail?id=${article.idArticle}"><c:out value="${article.nomArticle}" escapeXml="false" /></a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> <c:out value="${article.prix} Fcfa" escapeXml="false" /> </span>
                              </div>
                              <!-- /.product-price -->
                              
                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group center-block">
                                            <a class="btn btn-primary icon" data-toggle="dropdown" type="button" href="#" title="Panier" id="addcart${article.idArticle}"> <i class="fa fa-shopping-cart"></i> </a>
                                            <input type="hidden" value="${article.idArticle}" id="TestMaJquery${article.idArticle}"/>
                                          </li>
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
                    </c:when>
                    <c:when test="${(status.index % 5) == 1 || (status.index % 5) == 3}">
                    <div class="col-sm-6 col-md-4 col-lg-3">
                      <div class="item">
                        <div class="products" style="width: 100%;">
                          <div class="product">
                            <div class="product-image">
                              <div class="image">
                                <a href="/ColobaneOnline/detail?id=${article.idArticle}">
                                  <img src="${article.image}" alt="">
                                </a>
                              </div>
                              <!-- /.image -->
                              
                              <div class="tag sale"><span>sale</span></div>
                            </div>
                            <!-- /.product-image -->
                            
                            <div class="product-info text-left">
                              <h3 class="name"><a href="/ColobaneOnline/detail?id=${article.idArticle}"><c:out value="${article.nomArticle}" escapeXml="false" /></a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> <c:out value="${article.prix} Fcfa" escapeXml="false" /> </span>
                            </div>
                            <!-- /.product-price -->
                            
                          </div>
                          <!-- /.product-info -->
                          <div class="cart clearfix animate-effect">
                            <div class="action">
                              <ul class="list-unstyled">
                                <li class="add-cart-button btn-group center-block">
                                            <a class="btn btn-primary icon" data-toggle="dropdown" type="button" href="#" title="Panier" id="addcart${article.idArticle}"> <i class="fa fa-shopping-cart"></i> </a>
                                            <input type="hidden" value="${article.idArticle}" id="TestMaJquery${article.idArticle}"/>
                                          </li>
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
                  </c:when>
                  <c:otherwise>
                  <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="item">
                      <div class="products" style="width: 100%;">
                        <div class="product">
                          <div class="product-image">
                            <div class="image">
                              <a href="/ColobaneOnline/detail?id=${article.idArticle}">
                                <img src="${article.image}" alt="">
                              </a>
                            </div>
                            <!-- /.image -->
                            
                            <div class="tag hot"><span>hot</span></div>
                          </div>
                          <!-- /.product-image -->
                          
                          <div class="product-info text-left">
                            <h3 class="name"><a href="/ColobaneOnline/detail?id=${article.idArticle}"><c:out value="${article.nomArticle}" escapeXml="false" /></a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="description"></div>
                            <div class="product-price"> <span class="price"> <c:out value="${article.prix} Fcfa" escapeXml="false" /> </span>
                          </div>
                          <!-- /.product-price -->
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group center-block">
                                            <a class="btn btn-primary icon" data-toggle="dropdown" type="button" href="#" title="Panier" id="addcart${article.idArticle}"> <i class="fa fa-shopping-cart"></i> </a>
                                            <input type="hidden" value="${article.idArticle}" id="TestMaJquery${article.idArticle}"/>
                                          </li>
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
                </c:otherwise>
                </c:choose>
                </c:forEach>
                <!-- /.item -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.category-product -->
            
          </div>
          <!-- /.tab-pane -->
          <c:if test="${page > 1}">
          <c:forEach var="i" begin="2" end="${page}" step="1">
          <c:set var="forLoop" value="${trent+1}" />
          <div class="tab-pane " id="grid-container${i}">
            <div class="category-product">
              <div class="row">
                <c:forEach items="${articles}" var="article" begin="${forLoop}" end="${forLoop+15}" varStatus="status">
                <c:set var="trent" value="${status.end}" />
                <c:choose>
                <c:when test="${(status.index % 5) == 2 || (status.index % 5) == 4}">
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="item">
                    <div class="products" style="width: 100%;">
                      <div class="product">
                        <div class="product-image">
                          <div class="image">
                            <a href="/ColobaneOnline/detail?id=${article.idArticle}">
                              <img src="${article.image}" alt="">
                            </a>
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${article.idArticle}"><c:out value="${article.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${article.prix} Fcfa" escapeXml="false" /> </span>
                        </div>
                        <!-- /.product-price -->
                        
                      </div>
                      <!-- /.product-info -->
                      <div class="cart clearfix animate-effect">
                        <div class="action">
                          <ul class="list-unstyled">
                            <li class="add-cart-button btn-group center-block">
                                            <a class="btn btn-primary icon" data-toggle="dropdown" type="button" href="#" title="Panier" id="addcart${article.idArticle}"> <i class="fa fa-shopping-cart"></i> </a>
                                            <input type="hidden" value="${article.idArticle}" id="TestMaJquery${article.idArticle}"/>
                                          </li>
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
              </c:when>
              <c:when test="${(status.index % 5) == 1 || (status.index % 5) == 3}">
              <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                  <div class="products" style="width: 100%;">
                    <div class="product">
                      <div class="product-image">
                        <div class="image">
                          <a href="/ColobaneOnline/detail?id=${article.idArticle}">
                            <img src="${article.image}" alt="">
                          </a>
                        </div>
                        <!-- /.image -->
                        
                        <div class="tag hot"><span>hot</span></div>
                      </div>
                      <!-- /.product-image -->
                      
                      <div class="product-info text-left">
                        <h3 class="name"><a href="/ColobaneOnline/detail?id=${article.idArticle}"><c:out value="${article.nomArticle}" escapeXml="false" /></a></h3>
                        <div class="rating rateit-small"></div>
                        <div class="description"></div>
                        <div class="product-price"> <span class="price"> <c:out value="${article.prix} Fcfa" escapeXml="false" /> </span>
                      </div>
                      <!-- /.product-price -->
                      
                    </div>
                    <!-- /.product-info -->
                    <div class="cart clearfix animate-effect">
                      <div class="action">
                        <ul class="list-unstyled">
                          <li class="add-cart-button btn-group center-block">
                                            <a class="btn btn-primary icon" data-toggle="dropdown" type="button" href="#" title="Panier" id="addcart${article.idArticle}"> <i class="fa fa-shopping-cart"></i> </a>
                                            <input type="hidden" value="${article.idArticle}" id="TestMaJquery${article.idArticle}"/>
                                          </li>
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
            </c:when>
            <c:otherwise>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <div class="item">
                <div class="products" style="width: 100%;">
                  <div class="product">
                    <div class="product-image">
                      <div class="image">
                        <a href="/ColobaneOnline/detail?id=${article.idArticle}">
                          <img src="${article.image}" alt="">
                        </a>
                      </div>
                      <!-- /.image -->
                      
                      <div class="tag new"><span>new</span></div>
                    </div>
                    <!-- /.product-image -->
                    
                    <div class="product-info text-left">
                      <h3 class="name"><a href="/ColobaneOnline/detail?id=${article.idArticle}"><c:out value="${article.nomArticle}" escapeXml="false" /></a></h3>
                      <div class="rating rateit-small"></div>
                      <div class="description"></div>
                      <div class="product-price"> <span class="price"> <c:out value="${article.prix} Fcfa" escapeXml="false" /> </span>
                    </div>
                    <!-- /.product-price -->
                    
                  </div>
                  <!-- /.product-info -->
                  <div class="cart clearfix animate-effect">
                    <div class="action">
                      <ul class="list-unstyled">
                        <li class="add-cart-button btn-group center-block">
                                            <a class="btn btn-primary icon" data-toggle="dropdown" type="button" href="#" title="Panier" id="addcart${article.idArticle}"> <i class="fa fa-shopping-cart"></i> </a>
                                            <input type="hidden" value="${article.idArticle}" id="TestMaJquery${article.idArticle}"/>
                                          </li>
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
          </c:otherwise>
          </c:choose>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="item">
              <div class="products" style="width: 100%;">
                <div class="product">
                  <div class="product-image">
                    <div class="image">
                      <a href="/ColobaneOnline/detail?id=${article.idArticle}">
                        <img src="${article.image}" alt="">
                      </a>
                    </div>
                    <!-- /.image -->
                    
                    <div class="tag new"><span>new</span></div>
                  </div>
                  <!-- /.product-image -->
                  
                  <div class="product-info text-left">
                    <h3 class="name"><a href="/ColobaneOnline/detail?id=${article.idArticle}"><c:out value="${article.nomArticle}" escapeXml="false" /></a></h3>
                    <div class="rating rateit-small"></div>
                    <div class="description"></div>
                    <div class="product-price"> <span class="price"> <c:out value="${article.prix} Fcfa" escapeXml="false" /> </span>
                  </div>
                  <!-- /.product-price -->
                  
                </div>
                <!-- /.product-info -->
                <div class="cart clearfix animate-effect">
                  <div class="action">
                    <ul class="list-unstyled">
                      <li class="add-cart-button btn-group center-block">
                        <li class="add-cart-button btn-group center-block">
                                            <a class="btn btn-primary icon" data-toggle="dropdown" type="button" href="#" title="Panier" id="addcart${article.idArticle}"> <i class="fa fa-shopping-cart"></i> </a>
                                            <input type="hidden" value="${article.idArticle}" id="TestMaJquery${article.idArticle}"/>
                                          </li>
                      </li>
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
        </c:forEach>
        <!-- /.item -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.category-product -->
    
  </div>
  </c:forEach>
  </c:if>
  <!-- /.tab-pane #list-container -->
</div>
<!-- /.tab-content -->
<div class="clearfix filters-container bottom-row">
  <c:if test="${page > 1}">
  <div class="text-right">
    <div class="pagination-container">
      <ul class="list-inline list-unstyled">
        <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
        <li class="current active" id="id1"><a href="#">1</a></li>
        <c:forEach var="i" begin="2" end="${page}" step="1">
        <li class="current" id="id${i}"><a href="#"><c:out value="${i}"/></a></li>
        </c:forEach>
        <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
      </ul>
      <!-- /.list-inline -->
    </div>
    <!-- /.pagination-container -->
    <!-- /.col -->
  </div>
  </c:if>
  <!-- /.text-right -->
  
</div>
<!-- /.filters-container -->

</div>
<!-- /.home-owl-carousel -->

</div>

<!-- /.search-result-container -->

</div>
<!-- /.col -->
</div>
<!-- /.row -->
<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="brands-carousel" class="logo-slider">
<div class="logo-slider-inner">
<div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
<div class="item m-t-15"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item m-t-10"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand3.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand6.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->

<div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt=""> </a> </div>
<!--/.item-->
</div>
<!-- /.owl-carousel #logo-slider -->
</div>
<!-- /.logo-slider-inner -->

</div>
<!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== --> </div>
<!-- /.container -->

</div>
<!-- /.body-content -->
<!-- ============================================================= FOOTER ============================================================= -->
<!-- ============================================== INFO BOXES ============================================== -->
<%@ include file="footer.jsp"%>
<!-- ============================================================= FOOTER : END============================================================= -->
<!-- For demo purposes â€“ can be removed on production -->
<!-- For demo purposes â€“ can be removed on production : End -->
<%@ include file="script.jsp"%>
    <c:if test="${page > 1}">
      <script type="text/javascript">
  <c:forEach items="${articles}" var="article" varStatus="status">
  $("#addcart${article.idArticle}").on('click', function(event) {
    var currentCount = parseInt($("#TestMaJquery${article.idArticle}").val());
    $.ajax({
      url: 'home',
      type: 'POST',
      data: {action: "ajax",
            param1: currentCount,
      },
    })
    .done(function(data) {
      $(".count").text(""+data+"");
    })
    .fail(function() {
      alert("error");
    });
  });
</c:forEach>
        <c:forEach var="i" begin="1" end="${page}" step="1">
          $("#id${i}").click(function(){
            $("li.current.active").removeClass("active");
            $("#id${i}").addClass("active");
            $("div.tab-pane.active").removeClass("active");
            $("#grid-container${i}").addClass("active");
          });
        </c:forEach>

        $(document).ready(function(){
          $(".prev").click(function(event) {
            var page = $("li.current.active").attr('id');
            var bloc = $("div.tab-pane.active").attr('id');
            var numbPage = parseInt(page.match(/\d/g));
            var numbBloc = parseInt(bloc.match(/\d/g));
            numbPage = ((numbPage-1)%${page} == 0)? ${page} : (numbPage-1)%${page+1};
            numbBloc = ((numbBloc-1)%${page} == 0)? ${page} : (numbBloc-1)%${page+1};
            $("li.current.active").removeClass("active");
            $("#id"+numbPage+"").addClass("active");
            $("div.tab-pane.active").removeClass("active");
            $("#grid-container"+numbBloc+"").addClass("active");
          });
        $(".next").click(function(event) {
            var page = $("li.current.active").attr('id');
            var bloc = $("div.tab-pane.active").attr('id');
            var numbPage = parseInt(page.match(/\d/g));
            var numbBloc = parseInt(bloc.match(/\d/g));
            numbPage = ((numbPage+1)%${page+1} == 0)? 1 : (numbPage+1)%${page+1};
            numbBloc = ((numbBloc+1)%${page+1} == 0)? 1 : (numbBloc+1)%${page+1};
            $("li.current.active").removeClass("active");
            $("#id"+numbPage+"").addClass("active");
            $("div.tab-pane.active").removeClass("active");
            $("#grid-container"+numbBloc+"").addClass("active");
          });
        });
      </script>
    </c:if>
  </body>
</html>
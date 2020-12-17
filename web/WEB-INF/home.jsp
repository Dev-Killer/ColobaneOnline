<!DOCTYPE html>
<html lang="fr">

<head>
<!-- Meta -->

<jsp:include page="metaHead.jsp">
	<jsp:param name="title" value="Colobane Online"/>
</jsp:include>

</head>

<body class="cnt-home">

<jsp:include page="header.jsp">
	<jsp:param name="cart" value="${ count }"/>
</jsp:include>

<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-vs" id="top-banner-and-menu">
  <div class="container">
    <div class="row"> 
      <!-- ============================================== SIDEBAR ============================================== -->
      <%@ include file="allSidebar.jsp" %>
      <!-- /.sidemenu-holder --> 
      <!-- ============================================== SIDEBAR : END ============================================== --> 
      
      <!-- ============================================== CONTENT ============================================== -->
      <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder"> 
        <!-- ========================================== SECTION – HERO ========================================= -->
        
        <div id="hero">
          <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
            <div class="item" style="background-image: url(assets/images/sliders/01.jpg);">
              <div class="container-fluid">
                <div class="caption bg-color vertical-center text-left">
                  <div class="slider-header fadeInDown-1">Top Marque</div>
                  <div class="big-text fadeInDown-1"> Nouveau Collections </div>
                  <div class="excerpt fadeInDown-2 hidden-xs"> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span> </div>
                  <div class="button-holder fadeInDown-3"> <a href="index6c11.html?page=single-product" class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop Now</a> </div>
                </div>
                <!-- /.caption --> 
              </div>
              <!-- /.container-fluid --> 
            </div>
            <!-- /.item -->
            
            <div class="item" style="background-image: url(assets/images/sliders/02.jpg);">
              <div class="container-fluid">
                <div class="caption bg-color vertical-center text-left">
                  <div class="slider-header fadeInDown-1">Hiver 2021</div>
                  <div class="big-text fadeInDown-1"> Mode Femmes</div>
                  <div class="excerpt fadeInDown-2 hidden-xs"> <span>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit</span> </div>
                  <div class="button-holder fadeInDown-3"> <a href="index6c11.html?page=single-product" class="btn-lg btn btn-uppercase btn-primary shop-now-button">Faites Vous Plaisi</a> </div>
                </div>
                <!-- /.caption --> 
              </div>
              <!-- /.container-fluid --> 
            </div>
            <!-- /.item --> 
            
          </div>
          <!-- /.owl-carousel --> 
        </div>
        
        <!-- ========================================= SECTION – HERO : END ========================================= --> 
        

        <!-- ============================================== SCROLL TABS ============================================== -->
        <div id="product-tabs-slider" class="scroll-tabs outer-top-vs">
          <div class="more-info-tab clearfix ">
            <h3 class="new-product-title pull-left">Collection</h3>
            <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
            </ul>
            <!-- /.nav-tabs --> 
          </div>
          <div class="tab-content outer-top-xs">
            <div class="tab-pane in active" id="all">
              <div class="product-slider">
                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                  <c:forEach items="${cols}" var="col" varStatus="status">
                    <c:choose>
                      <c:when test="${(status.index % 5) == 2}">
                        <div class="item item-carousel">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image"> 
                                <a href="/ColobaneOnline/detail?id=${col.idArticle}">
                                   <img src="${col.image}" alt="">
                                </a> 
                             </div>
                                <!-- /.image -->
                                
                                <div class="tag new"><span>new</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="/ColobaneOnline/detail?id=${col.idArticle}"><c:out value="${col.nomArticle}" escapeXml="false" /></a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> <c:out value="${col.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price --> 
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${col.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                      <input type="hidden" value="${col.idArticle}" id="TestMaJquery${col.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                      <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                      </c:when>
                      <c:when test="${(status.index % 5) == 1 || (status.index % 5) == 3}">
                        <div class="item item-carousel">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image"> 
                                <a href="/ColobaneOnline/detail?id=${col.idArticle}">
                                   <img src="${col.image}" alt="">
                                </a> 
                             </div>
                                <!-- /.image -->
                                
                                <div class="tag sale"><span>Sale</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="/ColobaneOnline/detail?id=${col.idArticle}"><c:out value="${col.nomArticle}" escapeXml="false" /></a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> <c:out value="${col.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price --> 
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${col.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                      <input type="hidden" value="${col.idArticle}" id="TestMaJquery${col.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                      <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                      </c:when>
                      <c:otherwise>
                        <div class="item item-carousel">
                          <div class="products">
                            <div class="product">
                              <div class="product-image">
                                <div class="image"> 
                                <a href="/ColobaneOnline/detail?id=${col.idArticle}">
                                   <img src="${col.image}" alt="">
                                </a> 
                             </div>
                                <!-- /.image -->
                                
                                <div class="tag hot"><span>hot</span></div>
                              </div>
                              <!-- /.product-image -->
                              
                              <div class="product-info text-left">
                                <h3 class="name"><a href="/ColobaneOnline/detail?id=${col.idArticle}"><c:out value="${col.nomArticle}" escapeXml="false" /></a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>
                                <div class="product-price"> <span class="price"> <c:out value="${col.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price --> 
                                
                              </div>
                              <!-- /.product-info -->
                              <div class="cart clearfix animate-effect">
                                <div class="action">
                                  <ul class="list-unstyled">
                                    <li class="add-cart-button btn-group">
                                      <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${col.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                      <input type="hidden" value="${col.idArticle}" id="TestMaJquery${col.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                      <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                      </c:otherwise>
                    </c:choose>
                  </c:forEach>
                  <!-- /.item --> 
                </div>
                <!-- /.home-owl-carousel --> 
              </div>
              <!-- /.product-slider --> 
            </div>
            <!-- /.tab-pane -->            
          </div>
          <!-- /.tab-content --> 
        </div>
        <!-- /.scroll-tabs --> 
        <!-- ============================================== SCROLL TABS : END ============================================== --> 
        <!-- ============================================== WIDE PRODUCTS ============================================== -->
        <div class="wide-banners outer-bottom-xs">
          <div class="row">
            <div class="col-md-4 col-sm-4">
              <div class="wide-banner cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner1.jpg" alt=""> </div>
              </div>
              <!-- /.wide-banner --> 
            </div>
            
            <div class="col-md-4 col-sm-4">
              <div class="wide-banner cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner3.jpg" alt=""> </div>
              </div>
              <!-- /.wide-banner --> 
            </div>
            
            <!-- /.col -->
            <div class="col-md-4 col-sm-4">
              <div class="wide-banner cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner2.jpg" alt=""> </div>
              </div>
              <!-- /.wide-banner --> 
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.row --> 
        </div>
        <!-- /.wide-banners --> 
        
        <!-- ============================================== WIDE PRODUCTS : END ============================================== --> 
        <!-- ============================================== FEATURED PRODUCTS ============================================== -->
        <section class="section new-arriavls">
          <h3 class="section-title">Articles Vedettes</h3>

          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
            <c:forEach items="${lits}" var="lit" varStatus="status">
              <c:choose>
                <c:when test="${(status.index % 5) == 2}">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${lit.idArticle}">
                              <img src="${lit.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${lit.idArticle}"><c:out value="${lit.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${lit.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${lit.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${lit.idArticle}" id="TestMaJquery${lit.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:when>
                <c:when test="${(status.index % 5) == 1 || (status.index % 5) == 3}">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${lit.idArticle}">
                              <img src="${lit.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag sale"><span>Sale</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${lit.idArticle}"><c:out value="${lit.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${lit.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${lit.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${lit.idArticle}" id="TestMaJquery${lit.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:when>
                <c:otherwise>
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${lit.idArticle}">
                              <img src="${lit.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${lit.idArticle}"><c:out value="${lit.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${lit.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${lit.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${lit.idArticle}" id="TestMaJquery${lit.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:otherwise>
              </c:choose>
            </c:forEach>
          <!-- /.home-owl-carousel -->
        </section>
        <!-- /.section -->
        <!-- /.section --> 
        <!-- ============================================== FEATURED PRODUCTS : END ============================================== --> 
        <!-- ============================================== WIDE PRODUCTS ============================================== -->
        <div class="wide-banners outer-bottom-xs">
          <div class="row">
            <div class="col-md-8">
              <div class="wide-banner1 cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner.jpg" alt=""> </div>
                <div class="strip strip-text">
                  <div class="strip-inner">
                    <h2 class="text-right">Excellent Verre de Soleil<br>
                      <span class="shopping-needs">Avec 40% de réduction</span></h2>
                  </div>
                </div>
                <div class="new-label">
                  <div class="text">NEW</div>
                </div>
                <!-- /.new-label --> 
              </div>
              <!-- /.wide-banner --> 
            </div>
            <!-- /.col --> 
            <div class="col-md-4">
              <div class="wide-banner cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner4.jpg" alt=""> </div>
                
                
                <!-- /.new-label --> 
              </div>
              <!-- /.wide-banner --> 
            </div>
            
          </div>
          <!-- /.row --> 
        </div>
        <!-- /.wide-banners --> 
        <!-- ============================================== WIDE PRODUCTS : END ============================================== --> 
        
        
        
        <!-- /.sidebar-widget --> 
        <!-- ============================================== BEST SELLER : END ============================================== --> 
        
        <!-- ============================================== BLOG SLIDER : END ============================================== --> 
        
        <!-- ============================================== FEATURED PRODUCTS ============================================== -->

        <section class="section new-arriavls">
          <h3 class="section-title">Compilation d'Article</h3>

          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
            <c:forEach items="${compil1s}" var="compil1" varStatus="status">
              <c:choose>
                <c:when test="${(status.index % 5) == 2}">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${compil1.idArticle}">
                              <img src="${compil1.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${compil1.idArticle}"><c:out value="${compil1.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${compil1.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${compil1.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${compil1.idArticle}" id="TestMaJquery${compil1.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:when>
                <c:when test="${(status.index % 5) == 1 || (status.index % 5) == 3}">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${compil1.idArticle}">
                              <img src="${compil1.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag sale"><span>Sale</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${compil1.idArticle}"><c:out value="${compil1.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${compil1.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${compil1.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${compil1.idArticle}" id="TestMaJquery${compil1.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:when>
                <c:otherwise>
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${compil1.idArticle}">
                              <img src="${compil1.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${compil1.idArticle}"><c:out value="${compil1.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${compil1.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${compil1.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${compil1.idArticle}" id="TestMaJquery${compil1.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:otherwise>
              </c:choose>
            </c:forEach>
            <!-- /.item -->
          </div>
          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
            <c:forEach items="${compil2s}" var="compil2" varStatus="status">
              <c:choose>
                <c:when test="${(status.index % 5) == 2}">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${compil2.idArticle}">
                              <img src="${compil2.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${compil2.idArticle}"><c:out value="${compil2.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${compil2.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${compil2.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${compil2.idArticle}" id="TestMaJquery${compil2.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:when>
                <c:when test="${(status.index % 5) == 1 || (status.index % 5) == 3}">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${compil2.idArticle}">
                              <img src="${compil2.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${compil2.idArticle}"><c:out value="${compil2.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${compil2.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${compil2.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${compil2.idArticle}" id="TestMaJquery${compil2.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:when>
                <c:otherwise>
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                            <a href="/ColobaneOnline/detail?id=${compil2.idArticle}">
                              <img src="${compil2.image}" alt="">
                            </a> 
                          </div>
                                <!-- /.image -->
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <div class="product-info text-left">
                          <h3 class="name"><a href="/ColobaneOnline/detail?id=${compil2.idArticle}"><c:out value="${compil2.nomArticle}" escapeXml="false" /></a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> <c:out value="${compil2.prix} Fcfa" escapeXml="false" /> </span> </div>
                                <!-- /.product-price -->     
                        </div>
                              <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart" id="addcart${compil2.idArticle}"> <i class="fa fa-shopping-cart"></i> </button>
                                <input type="hidden" value="${compil2.idArticle}" id="TestMaJquery${compil2.idArticle}"/> <!-- on met val id du item dans value attribute -->
                                <button class="btn btn-primary cart-btn" type="button">Panier</button>
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
                </c:otherwise>
              </c:choose>
            </c:forEach>
            
          </div>
          <!-- /.home-owl-carousel -->
        </section>
        <!-- /.section -->
        <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
        
      </div>
      <!-- /.homebanner-holder --> 
      <!-- ============================================== CONTENT : END ============================================== --> 
    </div>
    <!-- /.row --> 
    <!-- ============================================== BRANDS CAROUSEL ============================================== -->
    <!-- /.logo-slider --> 
    <!-- ============================================== BRANDS CAROUSEL : END ============================================== --> 
  </div>
  <!-- /.container --> 
</div>
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
<!-- /#top-banner-and-menu --> 

        <!-- ============================================== INFO BOXES ============================================== -->
        
<%@ include file="footer.jsp"%>
<!-- ============================================================= FOOTER : END============================================================= --> 

<!-- For demo purposes – can be removed on production --> 

<!-- For demo purposes – can be removed on production : End --> 

<!-- JavaScripts placed at the end of the document so the pages load faster -->

<%@ include file="script.jsp"%>
<script type="text/javascript">
<c:forEach items="${compil2s}" var="compil2" varStatus="status">
  $("#addcart${compil2.idArticle}").on('click', function(event) {
    var currentCount = parseInt($("#TestMaJquery${compil2.idArticle}").val());
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
<c:forEach items="${compil1s}" var="compil1" varStatus="status">
  $("#addcart${compil1.idArticle}").on('click', function(event) {
    var currentCount = parseInt($("#TestMaJquery${compil1.idArticle}").val());
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
<c:forEach items="${cols}" var="col" varStatus="status">
  $("#addcart${col.idArticle}").on('click', function(event) {
    var currentCount = parseInt($("#TestMaJquery${col.idArticle}").val());
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
<c:forEach items="${lits}" var="lit" varStatus="status">
  $("#addcart${lit.idArticle}").on('click', function(event) {
    var currentCount = parseInt($("#TestMaJquery${lit.idArticle}").val());
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
</script>
</body>

</html>
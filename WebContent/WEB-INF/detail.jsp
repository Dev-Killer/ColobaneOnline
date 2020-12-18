<!DOCTYPE html>
<html lang="fr">

<head>
<!-- Meta -->

<jsp:include page="metaHead.jsp">
	<jsp:param value="title" name="Colobane Online"/>
</jsp:include>

</head>

<body class="cnt-home">

<jsp:include page="header.jsp">
	<jsp:param name="cart" value="${ count }"/>
</jsp:include>

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
  <div class="container">
    <div class="breadcrumb-inner">
      <ul class="list-inline list-unstyled">
        <li><a href="/ColobaneOnline/">Accueil</a></li>
        <li><a href="/ColobaneOnline/categories?categ=${article.categorie}">${article.categorie}</a></li>
        <li class='active'>${article.nomArticle}</li>
      </ul>
    </div><!-- /.breadcrumb-inner -->
  </div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-xs">
  <div class='container'>
    <div class='row single-product' style="margin-bottom: 10%;">
      <div class='col-xs-12 col-sm-12 col-md-3 sidebar'>
        <div class="sidebar-module-container">
          <div class="home-banner outer-top-n outer-bottom-xs">
            <img src="${pageContext.request.contextPath}/assets/images/banners/LHS-banner.jpg" alt="Image">
          </div>

          <!-- ============================================== Testimonials: END ============================================== -->



        </div>
      </div><!-- /.sidebar -->
      <div class='col-xs-12 col-sm-12 col-md-9 rht-col'>
        <div class="detail-block">
          <div class="row">

            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 gallery-holder">
              <div class="product-item-holder size-big single-product-gallery small-gallery">

                <div id="owl-single-product">
                  <div class="single-product-gallery-item" id="slide1">
                    <a data-lightbox="image-1" data-title="Gallery" href="${article.image}">
                      <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${article.image}" />
                    </a>
                  </div><!-- /.single-product-gallery-item -->
                </div><!-- /.single-product-slider -->

              </div><!-- /.single-product-gallery -->
            </div><!-- /.gallery-holder -->
            <div class='col-sm-12 col-md-8 col-lg-8 product-info-block'>
              <div class="product-info">
                <h1 class="name">${ article.nomArticle}</h1>

                <div class="rating-reviews m-t-20">
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="pull-left">
                        <div class="rating rateit-small"></div>
                      </div>
                      <div class="pull-left">
                        <div class="reviews">
                          <a href="#" class="lnk">(13 Reviews)</a>
                        </div>
                      </div>
                    </div>
                  </div><!-- /.row -->
                </div><!-- /.rating-reviews -->

                <div class="stock-container info-container m-t-10">
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="pull-left">
                        <div class="stock-box">
                          <span class="label">Status :</span>
                        </div>
                      </div>
                      <div class="pull-left">
                        <div class="stock-box">
                          <span class="value">${stock}</span>
                        </div>
                      </div>
                    </div>
                  </div><!-- /.row -->
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="pull-left">
                        <div class="stock-box">
                          <span class="label">Restant :</span>
                        </div>
                      </div>
                      <div class="pull-left">
                        <div class="stock-box">
                          <span class="value">${article.quantite}</span>
                        </div>
                      </div>
                    </div>
                  </div><!-- /.row -->
                </div><!-- /.stock-container -->

                <div class="description-container m-t-20">
                  <p>${article.description}</p>
                </div><!-- /.description-container -->

                <div class="price-container info-container m-t-30">
                  <div class="row">


                    <div class="col-sm-6 col-xs-6">
                      <div class="price-box">
                        <span class="price">${article.prix} Fcfa</span>
                      </div>
                    </div>

                    <div class="col-sm-6 col-xs-6">
                      <div class="favorite-button m-t-5">
                        <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Wishlist" href="#">
                          <i class="fa fa-heart"></i>
                        </a>
                        <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Add to Compare" href="#">
                          <i class="fa fa-signal"></i>
                        </a>
                        <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
                          <i class="fa fa-envelope"></i>
                        </a>
                      </div>
                    </div>

                  </div><!-- /.row -->
                </div><!-- /.price-container -->

                <div class="quantity-container info-container">
                  <div class="row">

                    <div class="qty">
                      <span class="label">Quantité :</span>
                    </div>

                    <div class="qty-count">
                      <div class="cart-quantity">
                        <div class="quant-input">
                          <input type="number" value="1" id="idtiti">
                        </div>
                      </div>
                    </div>

                    <div class="add-btn">
                      <a href="#" class="btn btn-primary ${ disable }" id="titi"><i class="fa fa-shopping-cart inner-right-vs"></i>AJOUTER AU PANIER</a>
                    </div>


                  </div><!-- /.row -->
                </div><!-- /.quantity-container -->






              </div><!-- /.product-info -->
            </div><!-- /.col-sm-7 -->
          </div><!-- /.row -->
        </div>

      </div><!-- /.col -->
      <div class="clearfix"></div>
    </div><!-- /.row -->
    <!-- ============================================== BRANDS CAROUSEL ============================================== -->
    <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div><!-- /.body-content -->

<!-- ============================================================= FOOTER ============================================================= -->

<!-- ============================================== INFO BOXES ============================================== -->
<%@ include file="footer.jsp"%>
<!-- ============================================================= FOOTER : END============================================================= --> 

<%@ include file="script.jsp"%>
<script type="text/javascript">
$("#titi").on('click', function(event) {
    var currentCount = parseInt($("#idtiti").val());
    $.ajax({
      url: 'home',
      type: 'POST',
      data: {action: "ajax1",
            param1: ${article.idArticle},
            param2: currentCount,
      },
    })
    .done(function(data) {
      $(".count").text(""+data+"");
    })
    .fail(function() {
      alert("error");
    });
  });
</script>
</body>

</html>
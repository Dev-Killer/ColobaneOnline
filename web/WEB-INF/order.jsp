<!DOCTYPE html>
<html lang="fr">

<head>
<!-- Meta -->

<jsp:include page="metaHead.jsp">
	<jsp:param value="title" name="Colobane Online"/>
</jsp:include>

</head>

<body class="cnt-home">

<%@ include file="header.jsp" %>

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
    <div class="container">
        <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="#">Accueil</a></li>
                <li class='active'>Passer Votre Commande</li>
            </ul>
        </div><!-- /.breadcrumb-inner -->
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-xs" style="margin-bottom: 5%;">
    <div class="container">
        <div class="row ">
            <div class="shopping-cart">
                <div class="shopping-cart-table ">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th class="cart-romove item">Supprimer</th>
                                <th class="cart-description item">Image</th>
                                <th class="cart-product-name item">Nom Article</th>
                                <th class="cart-qty item">Quantité</th>
                                <th class="cart-sub-total item">Prix Unitaire</th>
                                <th class="cart-total last-item">Prix Total</th>
                            </tr>
                            </thead><!-- /thead -->

                            <tbody>
                            <tr>
                                <td class="romove-item"><a href="#" title="cancel" class="icon"><i class="fa fa-trash-o"></i></a></td>
                                <td class="cart-image">
                                    <a class="entry-thumbnail" href="/Colobane_Online/detail">
                                        <img src="${pageContext.request.contextPath}/assets/images/products/p1.jpg" alt="">
                                    </a>
                                </td>
                                <td class="cart-product-name-info">
                                    <h4 class='cart-product-description'><a href="/Colobane_Online/detail">Floral Print Buttoned</a></h4>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="rating rateit-small"></div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="reviews">
                                                (06 Reviews)
                                            </div>
                                        </div>
                                    </div><!-- /.row -->
                                </td>
                                <td class="cart-product-quantity">
                                    <div class="quant-input">
                                        <div class="arrows">
                                            <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
                                            <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
                                        </div>
                                        <input type="text" value="1">
                                    </div>
                                </td>
                                <td class="cart-product-sub-total"><span class="cart-sub-total-price">$300.00</span></td>
                                <td class="cart-product-grand-total"><span class="cart-grand-total-price">$300.00</span></td>
                            </tr>
                            <tr>
                                <td class="romove-item"><a href="#" title="cancel" class="icon"><i class="fa fa-trash-o"></i></a></td>
                                <td class="cart-image">
                                    <a class="entry-thumbnail" href="/Colobane_Online/detail">
                                        <img src="${pageContext.request.contextPath}/assets/images/products/p2.jpg" alt="">
                                    </a>
                                </td>
                                <td class="cart-product-name-info">
                                    <h4 class='cart-product-description'><a href="/Colobane_Online/detail">Floral Print Buttoned</a></h4>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="rating rateit-small"></div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="reviews">
                                                (06 Vues)
                                            </div>
                                        </div>
                                    </div><!-- /.row -->
                                    <div class="cart-product-info">
                                </td>
                                <td class="cart-product-quantity">
                                    <div class="cart-quantity">
                                        <div class="quant-input">
                                            <div class="arrows">
                                                <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
                                                <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
                                            </div>
                                            <input type="text" value="1">
                                        </div>
                                    </div>
                                </td>
                                <td class="cart-product-sub-total"><span class="cart-sub-total-price">$300.00</span></td>
                                <td class="cart-product-grand-total"><span class="cart-grand-total-price">$300.00</span></td>
                            </tr>
                            </tbody><!-- /tbody -->

                            <tfoot>
                            <tr>
                                <td colspan="7">
                                    <div class="shopping-cart-btn">
							<span class="">
								<a href="/Colobane_Online/" class="btn btn-upper btn-primary outer-left-xs">Continuer Achats</a>
								<a href="#" class="btn btn-upper btn-primary pull-right outer-right-xs">Mettre à jour le Panier</a>
							</span>
                                    </div><!-- /.shopping-cart-btn -->
                                </td>
                            </tr>
                            </tfoot>
                        </table><!-- /table -->
                    </div>
                </div><!-- /.shopping-cart-table -->
                <div class="col-md-4 col-sm-12 estimate-ship-tax">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>
                                <span class="estimate-title">Code de Réduction</span>
                                <p>Entrez un Code Coupon !</p>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="form-group">
                                    <input type="text" class="form-control unicase-form-control text-input" placeholder="You Coupon..">
                                </div>
                                <div class="clearfix pull-right">
                                    <button type="submit" class="btn-upper btn btn-primary">APPLY COUPON</button>
                                </div>
                            </td>
                        </tr>
                        </tbody><!-- /tbody -->
                    </table><!-- /table -->
                </div><!-- /.estimate-ship-tax -->

                <div class="col-md-4 col-sm-12 estimate-ship-tax">

                </div>

                <div class="col-md-4 col-sm-12 cart-shopping-total">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>
                                <div class="cart-sub-total">
                                    Total<span class="inner-left-md">$600.00</span>
                                </div>
                                <div class="cart-grand-total">
                                    Somme Finale<span class="inner-left-md">$600.00</span>
                                </div>
                            </th>
                        </tr>
                        </thead><!-- /thead -->
                        <tbody>
                        <tr>
                            <td>
                                <div class="cart-checkout-btn pull-right">
                                    <button type="submit" class="btn btn-primary checkout-btn">PASSER UNE COMMANDER</button>
                                    <p><span class="">Paiement CASH à la livraison!</span></p>
                                </div>
                            </td>
                        </tr>
                        </tbody><!-- /tbody -->
                    </table><!-- /table -->
                </div><!-- /.cart-shopping-total -->			</div><!-- /.shopping-cart -->
        </div> <!-- /.row -->	</div><!-- /.container -->
</div><!-- /.body-content -->

<!-- ============================================================= FOOTER ============================================================= -->

<!-- ============================================== INFO BOXES ============================================== -->
        
<%@ include file="footer.jsp"%>
<!-- ============================================================= FOOTER : END============================================================= --> 

<!-- For demo purposes â€“ can be removed on production --> 

<!-- For demo purposes â€“ can be removed on production : End --> 

<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<%@ include file="script.jsp"%>
</body>

</html>
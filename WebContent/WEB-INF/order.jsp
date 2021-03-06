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
                                <th class="cart-qty item">Quantit�</th>
                                <th class="cart-sub-total item">Prix Unitaire</th>
                                <th class="cart-total last-item">Prix Total</th>
                            </tr>
                            </thead><!-- /thead -->

                            <tbody>
                            	<c:choose>
                            		<c:when test="${len > 0}">
                            			<c:forEach items="${articles}" var="article" varStatus="status">
                            				<tr>
			                                <td class="romove-item"><a href="/ColobaneOnline/order?remove=${article.idArticle}" title="cancel" class="icon"><i class="fa fa-trash-o"></i></a></td>
			                                <td class="cart-image">
			                                    <a class="entry-thumbnail" href="/Colobane_Online/detail?id=${article.idArticle}">
			                                        <img src="${article.image}" alt="">
			                                    </a>
			                                </td>
			                                <td class="cart-product-name-info">
			                                    <h4 class='cart-product-description'><a href="/Colobane_Online/detail">${article.nomArticle}</a></h4>
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
			                                        <input type="text" value="${dup[article]}" disabled>
			                                    </div>
			                                </td>
			                                <td class="cart-product-sub-total"><span class="cart-sub-total-price">${article.prix}</span></td>
			                                <td class="cart-product-grand-total"><span class="cart-grand-total-price">${article.prix * dup[article]}</span></td>
			                            </tr>
                            			</c:forEach>
                            		</c:when>
                            		<c:otherwise>
                            			<h1>Aucun Article Dans Le Panier</h1>
                            		</c:otherwise>
                            	</c:choose>
			                </tbody><!-- /tbody -->

                            <tfoot>
                            <tr>
                                <td colspan="7">
                                    <div class="shopping-cart-btn">
							<span class="">
								<a href="/ColobaneOnline/" class="btn btn-upper btn-primary outer-left-xs">Continuer Achats</a>
								<a href="#" class="btn btn-upper btn-primary pull-right outer-right-xs">Mettre � jour le Panier</a>
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
                                <span class="estimate-title">Code de R�duction</span>
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
                                    <button type="submit" class="btn-upper btn btn-primary disabled">APPLY COUPON</button>
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
                                <div class="cart-grand-total">
                                    Somme Finale<span class="inner-left-md">${price }</span>
                                </div>
                            </th>
                        </tr>
                        </thead><!-- /thead -->
                        <tbody>
                        <tr>
                            <td>
                                <div class="cart-checkout-btn pull-right">
                                    <a type="submit" class="btn btn-primary checkout-btn" href="/ColobaneOnline/order?push=jkl">PASSER UNE COMMANDER</a>
                                    <p><span class="">Paiement CASH � la livraison!</span></p>
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

<!-- For demo purposes – can be removed on production --> 

<!-- For demo purposes – can be removed on production : End --> 

<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<%@ include file="script.jsp"%>
</body>

</html>
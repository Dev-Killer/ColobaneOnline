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
	<jsp:param name="cart" value="${ 0 }"/>
</jsp:include>

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="/ColobaneOnline/">Accueil</a></li>
				<li class='active'>Livraison</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
	<div class="container" style="margin-bottom: 5%;">
		<div class="track-order-page">
			<div class="row">
				<div class="col-md-12">
	<h2 class="heading-title">Confirmation de Livraison</h2>
	<span class="title-tag inner-top-ss">Page Réservée à la LIVRAISON. Veuillez saisir votre CODE COMMANDE dans la case correspondant ci-dessous. Ce dernier vous a été remis aprés avoir confirmé votre commande.</span>
	<form method="post" action="deliver" class="register-form outer-top-xs" role="form">
		<div class="form-group">
		    <label class="info-title" for="livreur">ID Livreur</label>
		    <input type="password" class="form-control unicase-form-control text-input" id="livreur" name="livreur">
		</div>
	  	<div class="form-group">
		    <label class="info-title" for="codeCom">Code Commande</label>
		    <input type="text" class="form-control unicase-form-control text-input" id="codeCom" name="codeCom">
		</div>
	  	<button type="submit" class="btn-upper btn btn-primary checkout-page-button">Confirmer</button>
	  	<c:if test="${ !empty msg }">
			<h4 class="checkout-subtitle" style="color: red;"></h4>
		    	<div class="col-lg-7 center-block title-tag-line">
		    		<p style="color: #17a2b8; font-size: 18px"><c:out value="${ msg }" default="test" escapeXml="false"/></p>
		        </div>
		</c:if>
	</form>	
</div>			</div><!-- /.row -->
		</div><!-- /.sigin-in-->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div><!-- /.body-content -->
<!-- ============================================================= FOOTER ============================================================= -->

        <!-- ============================================== INFO BOXES ============================================== -->
<%@ include file="footer.jsp"%>
<!-- ============================================================= FOOTER : END============================================================= --> 

<!-- For demo purposes Ã¢â‚¬â€œ can be removed on production --> 

<!-- For demo purposes Ã¢â‚¬â€œ can be removed on production : End --> 

<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<%@ include file="script.jsp"%>
</body>

</html>
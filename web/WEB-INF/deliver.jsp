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
				<li><a href="/Colobane_Online/">Accueil</a></li>
				<li class='active'>Livraison</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
	<div class="container">
		<div class="track-order-page">
			<div class="row">
				<div class="col-md-12">
	<h2 class="heading-title">Confirmation de Livraison</h2>
	<span class="title-tag inner-top-ss">Page Réservée à la LIVRAISON. Veuillez saisir votre CODE COMMANDE dans la case correspondant ci-dessous. Ce dernier vous a été remis aprés avoir confirmé votre commande.</span>
	<form class="register-form outer-top-xs" role="form">
		<div class="form-group">
		    <label class="info-title" for="exampleOrderId1">ID Livreur</label>
		    <input type="password" class="form-control unicase-form-control text-input" id="exampleOrderId1" >
		</div>
	  	<div class="form-group">
		    <label class="info-title" for="exampleBillingEmail1">Code Commande</label>
		    <input type="text" class="form-control unicase-form-control text-input" id="exampleBillingEmail1" >
		</div>
	  	<button type="submit" class="btn-upper btn btn-primary checkout-page-button">Confirmer</button>
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
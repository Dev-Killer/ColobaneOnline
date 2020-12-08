<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta -->

<jsp:include page="metaHead.jsp">
	<jsp:param value="title" name="Colobane Online"/>
</jsp:include>

</head>
<body class="cnt-home">
<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">

    <!-- ============================================== TOP MENU ============================================== -->
    <!-- /.header-top -->
    <!-- ============================================== TOP MENU : END ============================================== -->
    <div class="main-header">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3 logo-holder center-block">
                    <!-- ============================================================= LOGO ============================================================= -->
                    <div class="logo"> <a href="/Colobane_Online/"> <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="logo"> </a> </div>
                    <!-- /.logo -->
                    <!-- ============================================================= LOGO : END ============================================================= --> </div>
                <!-- /.top-cart-row -->
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
    <!-- /.main-header -->

    <!-- ============================================== NAVBAR ============================================== -->
    <!-- /.header-nav -->
    <!-- ============================================== NAVBAR : END ============================================== -->

</header>

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
    <div class="container">
        <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="/Colobane_Online/">Accueil</a></li>
                <li class='active'>S'inscrire</li>
            </ul>
        </div><!-- /.breadcrumb-inner -->
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
    <div class="container">
        <div class="sign-in-page">
            <div class="row">
                <!-- create a new account as seller-->
                <div class="col-md-6 col-sm-6 create-new-account center-block">
                    <h4 class="checkout-subtitle">Créer un nouveau Compte</h4>
                    <p class="text title-tag-line">Créer votre nouveau Compte.</p>
                    <form class="register-form outer-top-xs" role="form">
                        <div class="form-group">
                            <label class="info-title" for="exampleInputEmail2">Nom <span>*</span></label>
                            <input type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail2" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputEmail1">Prénom <span>*</span></label>
                            <input type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail1" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputEmail1">Adresse <span>*</span></label>
                            <input type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail1" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputEmail1">Numéro téléphone <span>*</span></label>
                            <input type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail1" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputEmail1">Email <span>*</span></label>
                            <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputEmail1">Password <span>*</span></label>
                            <input type="password" class="form-control unicase-form-control text-input" id="exampleInputEmail1" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputEmail1">Confirm Password <span>*</span></label>
                            <input type="password" class="form-control unicase-form-control text-input" id="exampleInputEmail1" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title ">Profil <span>*</span></label>
                            <select class="form-control " required>
                                <option>--Select options--</option>
                                <option>Vendeur</option>
                                <option>Acheteur</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck" required>
                                <label class="form-check-label" for="gridCheck">
                                    J'accepte les <a href="terms-conditions.html">conditions générales</a> et les <a href="terms-conditions.html">politiques de confidentialité</a> de Colobane Online .
                                </label>
                            </div>
                        </div>
                        <div class="col-md-8 center-block">
                            <button type="submit" class="btn-upper btn btn-primary checkout-page-button btn-block">Sign Up</button>
                        </div>
                    </form>
                    <h4 class="checkout-subtitle"></h4>
                    <div class="col-lg-7 center-block title-tag-line">
                        <p><span style="color: black">Vous possédez déjà  un compte ? <span></span><a href="/Colobane_Online/login">Identifiez-vous</a></p>
                    </div>
                </div>
                <!-- create a new account -->			<!-- /.row -->
        </div><!-- /.sigin-in-->
        <!-- ============================================== login link ============================================== -->
        <!-- ============================================== login link ============================================== -->	</div><!-- /.container -->
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
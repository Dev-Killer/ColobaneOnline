<!DOCTYPE html>
<html lang="fr">

<head>
<!-- Meta -->

<jsp:include page="metaHead.jsp">
	<jsp:param name="title" value="Colobane Online"/>
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
                    <div class="logo"> <a href="home.html"> <img src="assets/images/logo.png" alt="logo"> </a> </div>
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


<div class="body-content">
    <div class="container">
        <div class="sign-in-page">
            <div class="row">
                <!-- create a new account as seller-->
                <div class="col-md-6 col-sm-6 create-new-account center-block">
                    <h4 class="checkout-subtitle" style="font-size: 30px; font-weight: 900;">Ajouter un article</h4>
                    <p class="text title-tag-line" style="font-size: 15px;">Veuillez renseigner correctement les champs suivants pour ajouter votre article</p>
                    <form class="register-form outer-top-xs" role="form" method="post" action="articleForm" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="info-title" for="name">Nom Article <span>*</span></label>
                            <input type="text" class="form-control unicase-form-control text-input" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="description">Description Article<span class="requis">*</span></label>
                            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="price">Prix Article (en Franc cfa) <span>*</span></label>
                            <input type="number" class="form-control unicase-form-control text-input" id="price" name="price" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="quantity">Quantité en Stock <span>*</span></label>
                            <input type="number" class="form-control unicase-form-control text-input" id="quantity" name="quantity" required>
                        </div>
                        <div class="form-group">
                            <label class="info-title ">Catégorie<span>*</span></label>
                            <select class="form-control" name="categ" required>
                                <option>--Select options--</option>
                                <option value="Mode">Mode</option>
                                <option value="Electronique">Electronique</option>
                                <option value="Chaussure">Chaussure</option>
                                <option value="Montre">Montre</option>
                                <option value="Bijou">Bijou</option>
                                <option value="Santé & Beauté">Santé & Beauté</option>
                                <option value="Enfant & bébés">Enfant & bébés</option>
                                <option value="Sport">Sport</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="custom-file">
                                <label class="custom-file-label" for="customFile" style="font-size: 15px;">Image de l'article <span>*</span></label>
                                <input type="file" class="custom-file-input" id="customFile" name="image" required accept=".jpg, .jpeg">
                            </div>
                        </div>

                        <div class="col-md-8 center-block">
                            <button type="submit" class="btn-upper btn btn-primary checkout-page-button btn-block">Créer Article</button>
                        </div>
                        <c:if test="${ !empty msg }">
						   <h4 class="checkout-subtitle" style="color: red;"></h4>
		                    <div class="col-lg-7 center-block title-tag-line">
		                        <p style="color: #17a2b8; font-size: 16px"><c:out value="${ msg }" default="test" /></p>
		                    </div>
						</c:if>
                    </form>
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
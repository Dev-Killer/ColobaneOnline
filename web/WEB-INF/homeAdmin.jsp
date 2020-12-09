<%-- 
    Document   : homeAdmin
    Created on : 9 déc. 2020, 16:25:38
    Author     : user
--%>
<!DOCTYPE html>
<html>
    <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">
    <!-- Bootstrap Core CSS -->

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="assets/css/main.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
              integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
              crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.0/css/bootstrap.min.css"
              integrity="sha512-Kx22U8IiIwSKYEPPTN6bjolK0XMhQ4ZDcOwR+GzXnoWbpyQDPKNXQfJLOt6o5MzhtXorMb0M+LptuR8h47/I5A=="
              crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.0/js/bootstrap.min.js" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

        <!--script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/userprofile.js"></script> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/userprofile.css"-->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="main-header mb-5">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3 logo-holder text-center">
                    <!-- ============================================================= LOGO ============================================================= -->
                    <div class="logo text-center"> <a href="home.html"> <img src="assets/images/logo.png" alt="logo"> </a> </div>
                    <!-- /.logo -->
                    <!-- ============================================================= LOGO : END ============================================================= --> </div>
                 <!-- /.top-cart-row -->
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
        <h1  class="d-flex justify-content-center" >Liste des clients</h1>
        <div class="container">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-lg-6 col-sm-10">
                                <h2>Gestion des  <b class="text-warning">Vendeurs</b></h2>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Nom</th>
                                <th>Prenom</th>                     
                                <th>E-mail</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ listVendeurs }" var="vendeur" varStatus="status">
                                <tr>
                                    <td> c:out value="${ vendeur.nom }" /</td>
                                    <td> c:out value="${ vendeur.prenom }" /</td>                        
                                    <td> c:out value="${ vendeur.adresse }" /</td>
                                    <td>
                                        <a href="home.html" class="delete" title="Delete" data-toggle="modal" data-target="#staticBackdrop"><i class="fas fa-trash"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Modals -->
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Confirmation</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Êtes-Vous sur de vouloir désactiver ce(cette) vendeur(euse) ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
        <a class="btn btn-primary" href="home.html" style="text-transform: capitalize;">Confirmer</a>
      </div>
    </div>
  </div>
</div>

</body>
</html>

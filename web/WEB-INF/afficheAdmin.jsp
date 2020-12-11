
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
              integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
              crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.0/css/bootstrap.min.css"
              integrity="sha512-Kx22U8IiIwSKYEPPTN6bjolK0XMhQ4ZDcOwR+GzXnoWbpyQDPKNXQfJLOt6o5MzhtXorMb0M+LptuR8h47/I5A=="
              crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.0/js/bootstrap.min.js"
                                                                                                                                                                                                        integrity="sha512-P80p6tohVkKfeJBb6xFNw7PAlgdY4rZWSZbLu5UtuGGiC85I0P7uuSEpes/Yvq/djrmUZ3ZiyU1295dCacFlQg=="
        crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/userprofile.js"></script> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/userprofile.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Affiche</title>

    </head>
    <body>
        <h1  class="d-flex justify-content-center" >Liste des vendeurs</h1>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-5">
                                <h2>Gestion des  <b>Vendeurs</b></h2>
                            </div>
                            <div class="col-sm-7">
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
                            <c:forEach items="${ listAcheteurs }" var="acheteur" varStatus="status">

                                <tr>

                                    <td> <c:out value="${ acheteur.nom }" /> </td>
                                    <td> <c:out value="${ acheteur.prenom }" /> </td>                        
                                    <td> <c:out value="${ acheteur.adresse }" /> </td>
                                </tr>
                                <tr>
                                </c:forEach>
                                <c:forEach items="${ listVendeurs }" var="vendeur" varStatus="status">

                                <tr>

                                    <td> <c:out value="${ vendeur.nom }" /> </td>
                                    <td> <c:out value="${ vendeur.prenom }" /> </td>                        
                                    <td> <c:out value="${ vendeur.adresse }" /> </td>
                                    <td>
                                        <a href="/ColobaneOnline/intadmin/confirmation?adresse=${vendeur.adresse}&nom=${vendeur.nom}" class="delete btn btn-danger" title="Desactiver" data-toggle="tooltip">Desactiver</a>
                                    </td>
                                </tr>
                                <tr>
                                </c:forEach>
                        </tbody>
                    </table>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</h 
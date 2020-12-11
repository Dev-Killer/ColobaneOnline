<%-- 
    Document   : homeAdmin
    Created on : 9 déc. 2020, 16:25:38
    Author     : user
--%>

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


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a  class="btn btn-danger" style="float: right;" href="/ColobaneOnline/intadmin/deconnexion"  >Se deconnecter </a>
        
        <br><br><br><br> 
        
    <center>
        <a class="btn btn-warning" style="margin: 5px;" href="/ColobaneOnline/intadmin/show?req=acheteur"  >Liste des acheteurs </a>
        <a class="btn btn-primary" style="margin: 5px;" href="/ColobaneOnline/intadmin/show?req=vendeur"  >Listes des vendeurs </a>
        <a class="btn btn-danger" style="margin: 5px;" href="/ColobaneOnline/intadmin/show?req=commande"  >Listes des commandes </a>
    </center>
    </body>
</html>

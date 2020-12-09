<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>

<body class="cnt-home">

        <div class="container">
            <h2 class="text-center">Page admin</h2>
            
            <span class="erreur">${error}</span><br>
            
           
            <div>
                <form  action="/ColobaneOnline/intadmin" method="post" >
                    <div class="form-group">
                        <label for="nom">Nom</label>
                        <input type="nom" required class="form-control" placeholder="Veuillez entrer votre email" id="nom" name="nom">
                    </div>
           
                    <div class="form-group">
                        <label for="phone">Mot de passe</label>
                        <input type="password" class="form-control" placeholder="Veuillez entrer votre mot de passe" id="password" name="password">
                    </div>
                    <button type="submit" class="btn btn-primary">Se connecter</button>


                    </body>
                    </html>
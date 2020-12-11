package com.colobane.Servlets;

import com.colobane.Bdd.AdministrateurQueries;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfirmerDesactivation extends HttpServlet {

    public final String VUE = "/WEB-INF/confirm.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nomVendeur = request.getParameter("nom");

        String adresseVendeur = request.getParameter("adresse");
        request.setAttribute("adresse", adresseVendeur);
        AdministrateurQueries connexion = new AdministrateurQueries();
        int result = 0;
        try {
            result = connexion.desactiverVendeur(adresseVendeur);
        } catch (SQLException ex) {
            Logger.getLogger(ConfirmerDesactivation.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (result != 0) {

            this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
        } else {
            request.setAttribute("error", "Une erreur est survenu lors de la desactivation ");
            this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

    }

}

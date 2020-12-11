/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Servlets;

import com.colobane.Bdd.AcheteurQueries;
import com.colobane.Bdd.VendeurQueries;
import com.colobane.Beans.Acheteur;
import com.colobane.Beans.Vendeur;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AfficheAdmin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch (request.getParameter("req")) {
            case "vendeur":
                VendeurQueries connexionVendeur = new VendeurQueries();
                ArrayList<Vendeur> ALL_VENDEURS = (ArrayList<Vendeur>) connexionVendeur.getAllVendeurs();
                request.setAttribute("listVendeurs", ALL_VENDEURS);
                this.getServletContext().getRequestDispatcher("/WEB-INF/afficheAdmin.jsp").forward(request, response);

                break;
            case "acheteur":
                AcheteurQueries connexionAcheteur = new AcheteurQueries();
                ArrayList<Acheteur> ALL_ACHETEURS = (ArrayList<Acheteur>) connexionAcheteur.getAllAcheteurs();
                request.setAttribute("listAcheteurs", ALL_ACHETEURS);
                this.getServletContext().getRequestDispatcher("/WEB-INF/afficheAdmin.jsp").forward(request, response);

                break;
            case "commande":
                this.getServletContext().getRequestDispatcher("/WEB-INF/afficheAdmin.jsp").forward(request, response);

                break;
            default:
                request.setAttribute("error", "ERREUR: Requete inconnue");
                this.getServletContext().getRequestDispatcher("/WEB-INF/afficheAdmin.jsp").forward(request, response);

                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Servlets;

import com.colobane.beans.Vendeur;
import com.colobane.Bdd.VendeurQueries;
import com.colobane.Bdd.AcheteurQueries;
import com.colobane.Beans.Acheteur;
import com.colobane.utils.ValidationForm;
import java.io.IOException;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class Inscription extends HttpServlet {

    public static final String VUE = "/WEB-INF/inscription.jsp";
    public static final String CHAMP_PRENOM = "prenom";
    public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_PASS = "password";
    public static final String CHAMP_CONF = "confirmation";
    public static final String CHAMP_NOM = "nom";
    public static final String CHAMP_PROFILE = "profile";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String adresse = request.getParameter("adresse");
        String password = request.getParameter("password");
        String confirmation = request.getParameter("confirmation");
        String phone = request.getParameter("phone");

        ValidationForm form = new ValidationForm();
        request.setAttribute("form", form);
        URL url = getClass().getClassLoader().getResource("com/colobane/beans/Vendeur.class");
        if (request.getParameter(CHAMP_PROFILE).equals("acheteur")) {

            Acheteur acheteur = new Acheteur();

            acheteur.setNom(nom);
            acheteur.setPrenom(prenom);
            acheteur.setPassword(password);
            acheteur.setTelephone(phone);
            acheteur.setAdresse(adresse);

           
            boolean bol = form.inscrire(request);

            if (bol) {
                  AcheteurQueries inscription = new AcheteurQueries();
                inscription.addAcheteur(acheteur);
                this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);

            }

        } else if (request.getParameter(CHAMP_PROFILE).equals("vendeur")) {
            Vendeur vendeur = new Vendeur();

            vendeur.setNom(nom);
            vendeur.setPrenom(prenom);
            vendeur.setPassword(password);
            vendeur.setTelephone(phone);
            vendeur.setAdresse(adresse);
            request.setAttribute("url",url);
             boolean bol = form.inscrire(request);

            if (bol) {
                
                VendeurQueries inscription = new VendeurQueries();
                inscription.addVendeur(vendeur);
                
                this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);

            }

        } else {
            request.setAttribute("inconnu", "Profile Inconnu");
        }

        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

    }

}

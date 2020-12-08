/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Servlets;

import com.colobane.Bdd.VendeurQueries;
import com.colobane.Bdd.AcheteurQueries;
import com.colobane.Beans.Acheteur;
import com.colobane.Beans.Vendeur;
import com.colobane.utils.Sha256;
import com.colobane.utils.ValidationForm;
import java.io.IOException;
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
        if (request.getParameter(CHAMP_PROFILE).equals("acheteur")) {
            
            Acheteur acheteur = new Acheteur(nom, prenom, password, phone);
            
            boolean bol = form.inscrire(request);
            
            if (bol) {
                AcheteurQueries inscription = new AcheteurQueries();
                acheteur.setPassword(Sha256.sha256(password));
                inscription.addAcheteur(acheteur);
                this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
                
            }
            request.setAttribute("form", form);
            
        } else if (request.getParameter(CHAMP_PROFILE).equals("vendeur")) {
            Vendeur vendeur = new Vendeur(nom, prenom, password, adresse, phone);
            
            boolean bol = form.inscrire(request);
            
            if (bol) {
                
                VendeurQueries inscription = new VendeurQueries();
                vendeur.setPassword(Sha256.sha256(password));
                inscription.addVendeur(vendeur);
                
                this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
                
            }
            request.setAttribute("form", form);
            
        } else {
            request.setAttribute("inconnu", "Profile Inconnu");
        }
        request.setAttribute("form", form);
        
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
        
    }
    
}

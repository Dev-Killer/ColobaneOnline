/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Servlets;

import com.colobane.Bdd.AcheteurQueries;
import com.colobane.Bdd.VendeurQueries;
import com.colobane.utils.Sha256;
import com.colobane.utils.ValidationForm;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class Connexion extends HttpServlet {

    public static final String VUE = "/WEB-INF/connexion.jsp";
    public static final String CHAMP_PRENOM = "prenom";
    public static final String CHAMP_PROFILE = "profile";
    public static final String CHAMP_PASSWORD = "password";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String adresse = request.getParameter("adresse");
        String password = request.getParameter("password");
        String profile = request.getParameter("profile");
        ValidationForm form = new ValidationForm();
        password=Sha256.sha256(password);
        if (profile.equals("acheteur")) {
            AcheteurQueries connexion = new AcheteurQueries();
            try {
                int[] result = connexion.findAcheteur(adresse,password);
                
                request.setAttribute("adresse",adresse);
                request.setAttribute("password",password);
                
                if (result[0] == 1) {
                    HttpSession session = request.getSession();
                    session.setAttribute("id", result[1]);
                    this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);

                } else {
                    String errorMessage = "Verifier votre email ou votre mot de passe";
                    request.setAttribute("error", errorMessage);
                }
            } catch (SQLException ex) {
                Logger.getLogger(Connexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (profile.equals("vendeur")) {
            VendeurQueries connexion = new VendeurQueries();
            try {
                int[] result = connexion.findVendeur(adresse,password);
                
                request.setAttribute("adresse",adresse);
                request.setAttribute("password",password);
                
                if (result[0] == 1) {
                    HttpSession session = request.getSession();
                    session.setAttribute("id", result[1]);
                    this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);

                } else {
                    String errorMessage = "Verifier votre email ou votre mot de passe";
                    request.setAttribute("error", errorMessage);
                }
            } catch (SQLException ex) {
                Logger.getLogger(Connexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            request.setAttribute("profile","Profile inconnu");
            this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
        }
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

    }

}

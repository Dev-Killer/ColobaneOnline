package com.colobane.Servlets;

import com.colobane.Bdd.AcheteurQueries;
import com.colobane.Bdd.AdministrateurQueries;
import com.colobane.Bdd.VendeurQueries;
import com.colobane.Beans.Acheteur;
import com.colobane.Beans.Vendeur;
import com.colobane.utils.Sha256;
import com.colobane.utils.ValidationForm;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Admin extends HttpServlet {

    public static final String VUE = "/WEB-INF/admin.jsp";
    public static final String CHAMP_NOM = "nom";
    public static final String CHAMP_PASSWORD = "password";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
          this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

                }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = request.getParameter(CHAMP_NOM);
        String password = Sha256.sha256(request.getParameter(CHAMP_PASSWORD));
        ValidationForm form = new ValidationForm();
        AdministrateurQueries connexion = new AdministrateurQueries();
        int[] result={};
        try {
            result = connexion.findAdmin(nom, password);
        } catch (SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }        
                if (result[0] == 1) {
                    HttpSession session = request.getSession();
                    session.setAttribute("id_admin", result[1]);
                    session.setAttribute("nom",nom);
                    this.getServletContext().getRequestDispatcher("/WEB-INF/homeAdmin.jsp").forward(request, response);

                } else {
                    String errorMessage = "Verifier votre email ou votre mot de passe";
                    request.setAttribute("error", errorMessage);
                }
        
        
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

    }

}

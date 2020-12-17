package com.colobane.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.colobane.Bdd.CommandeQueries;
import com.colobane.Bdd.LivrerQueries;
import com.colobane.Bdd.LivreurQueries;

public class Deliver extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/deliver.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String msg = "";
    	
    	LivreurQueries livQueries = new LivreurQueries();
    	CommandeQueries comQueries = new CommandeQueries();
    	
    	List<String> codeLivList = livQueries.getIdLivs();
    	List<String> codeComList = comQueries.getAllCodeComRemainingList();
    	
    	
    	String id_livreur = request.getParameter("livreur");
    	String code_comString = request.getParameter("codeCom");
    	
    	if ((id_livreur != null && code_comString != null) && (codeLivList.contains(id_livreur) && codeComList.contains(code_comString))) {
			LivrerQueries queries = new LivrerQueries();
			queries.addCompleteShipping(id_livreur, code_comString);
			msg = "Livraison confirmée et effectuée avec succée";
		} else {
			msg = "Erreur lors de la confirmation de Livraison (Ou la <b>Livraison</b> est déjà <b>effectuée</b>). <br>Veuillez vérifier vos <b>CODE</b> et <b><i>Réessayer<b></i>";
		}
    	
    	request.setAttribute("msg", msg); 
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

}

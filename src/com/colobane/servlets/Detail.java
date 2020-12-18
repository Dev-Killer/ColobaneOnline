package com.colobane.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.colobane.Bdd.ArticleQueries;
import com.colobane.Beans.Article;
import com.colobane.utils.CartController;
import com.colobane.utils.CategoriesController;


@WebServlet("/Detail")
public class Detail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/detail.jsp";

	
    public Detail() {      
        super();
        // TODO Auto-generated constructor stub
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArticleQueries queries = new ArticleQueries();
		Article article = new Article();
		CategoriesController categController = new CategoriesController();
    	CartController cartController = new CartController();
    	
		String id = request.getParameter("id");
		article = queries.getArticle(id);
		String disable = (article.getQuantite() > 0) ? "" : "disabled";
		String stock = (article.getQuantite() > 0) ? "En Stock" : "En rupture";
		
		request.setAttribute("stock", stock);
		request.setAttribute("disable", disable);
		request.setAttribute("article", article);
    	request = categController.getResponse(request);
    	request.setAttribute("count", cartController.cartSize(cartController.getCookieValue(request, "cart")));
    	
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

}

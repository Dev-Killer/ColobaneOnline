package com.colobane.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.colobane.Bdd.ArticleQueries;
import com.colobane.Beans.Article;
import com.colobane.utils.ArticleOrder;
import com.colobane.utils.CartController;

public class NewItems extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/newItems.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	ArticleQueries queries = new ArticleQueries();
    	List<Article> articles = new ArrayList<Article>();
    	CartController cartController = new CartController();
    	
    	int numberPage = 0;
    	String action = (request.getParameter("action") != null)? request.getParameter("action") : "";
    	request.setAttribute("count", cartController.cartSize(cartController.getCookieValue(request, "cart")));
    	switch (action) {
		case "lower": 
			queries = new ArticleQueries();
	    	articles = new ArrayList<Article>(); 
	    	articles = queries.getArticlesLimitedOrderedBy(64, ArticleOrder.PRIX_Asc.ord+" , "+ArticleOrder.DATE_CREATION_Desc.ord);
	    	request.setAttribute("articles", articles);
	    	numberPage = (int) Math.ceil(48.0/16);
	    	request.setAttribute("page", numberPage);
	    	request.setAttribute("sort", 1);
	    	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
			break;
		case "upper":
			queries = new ArticleQueries();
	    	articles = new ArrayList<Article>(); 
	    	articles = queries.getArticlesLimitedOrderedBy(64, ArticleOrder.PRIX_Desc.ord+" , "+ArticleOrder.DATE_CREATION_Desc.ord);
	    	request.setAttribute("articles", articles);
	    	numberPage = (int) Math.ceil(48.0/16);
	    	request.setAttribute("page", numberPage); 
	    	request.setAttribute("sort", 2);
	    	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
			break;
		case "atoz":
			queries = new ArticleQueries();
	    	articles = new ArrayList<Article>(); 
	    	articles = queries.getArticlesLimitedOrderedBy(64, ArticleOrder.NOM_Asc.ord+" , "+ArticleOrder.DATE_CREATION_Desc.ord);
	    	request.setAttribute("articles", articles);
	    	numberPage = (int) Math.ceil(48.0/16);
	    	request.setAttribute("page", numberPage);  
	    	request.setAttribute("sort", 3);
	    	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
			break;
		case "ztoa":
			queries = new ArticleQueries();
	    	articles = new ArrayList<Article>(); 
	    	articles = queries.getArticlesLimitedOrderedBy(64, ArticleOrder.NOM_Desc.ord+" , "+ArticleOrder.DATE_CREATION_Desc.ord);
	    	request.setAttribute("articles", articles);
	    	numberPage = (int) Math.ceil(48.0/16);
	    	request.setAttribute("page", numberPage);  
	    	request.setAttribute("sort", 4); 
	    	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
			break;
		default:
	    	articles = queries.getArticlesLimitedOrderedBy(64, ArticleOrder.DATE_CREATION_Desc.ord);
	    	request.setAttribute("articles", articles);
	    	numberPage = (int) Math.ceil(64.0/16);
	    	request.setAttribute("page", numberPage);  
	    	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
			break;
		}   
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

}

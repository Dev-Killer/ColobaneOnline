package com.colobane.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.colobane.Bdd.ArticleQueries;
import com.colobane.Beans.Article;
import com.colobane.utils.ArticleOrder;
import com.colobane.utils.CartController;

public class Acceuil extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/home.jsp";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Article> colArticles = new ArrayList<Article>();
		List<Article> litArticles = new ArrayList<Article>();
		List<Article> compil1Articles = new ArrayList<Article>();
		List<Article> compil2Articles = new ArrayList<Article>();
		ArticleQueries queries = new ArticleQueries();
		CartController cartController = new CartController(); 

		colArticles = queries.getArticlesByPriceRangeLimitedOrderedBy(15000, 50000, ArticleOrder.DATE_CREATION_Desc.ord,
				10);
		litArticles = queries.getArticlesLimitedOrderedBy(10, ArticleOrder.DESCRIPTION_Asc.ord);
		compil1Articles = queries.getArticlesByPriceRangeLimitedOrderedBy(1000, 14900, ArticleOrder.PRIX_Desc.ord, 10);
		compil2Articles = queries.getArticlesByPriceRangeLimitedOrderedBy(60000, 90000, null, 10);
		int cartSize = cartController.cartSize(cartController.getCookieValue(request, "cart"));
 
		request.setAttribute("cols", colArticles);
		request.setAttribute("lits", litArticles);
		request.setAttribute("compil1s", compil1Articles);
		request.setAttribute("compil2s", compil2Articles);
		request.setAttribute("count", cartSize);
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		String idP = request.getParameter("param1");
		CartController cartController = new CartController();
		String cart = null;
		int rep = 0;
		switch (action) {
		case "ajax":
			cart = cartController.getCookieValue(request, "cart");   
			cart = cartController.cartListString(cart, idP);
			Cookie cookie = new Cookie("cart", cart);
			cookie.setMaxAge(60 * 60 * 24 * 365);
			response.addCookie(cookie);
			rep = cartController.cartSize(cart);
			response.getWriter().println(rep);
			break;
		case "ajax1":
			int numItem = Integer.parseInt(request.getParameter("param2"));
			cart = cartController.getCookieValue(request, "cart");   
			for (int i = 0; i < numItem; i++) { 
				cart = cartController.cartListString(cart, idP);
			}
			Cookie cookie1 = new Cookie("cart", cart);
			cookie1.setMaxAge(60 * 60 * 24 * 365);
			response.addCookie(cookie1);
			rep = cartController.cartSize(cart);
			response.getWriter().println(rep);
			break;

		default:
			
			this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}
	}
}

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

public class Acceuil extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/home.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	ArticleQueries articleQueries = new ArticleQueries();
    	
    	List<Article> articles = new ArrayList<Article>();
    	articles = articleQueries.getArticlesList();
    	request.setAttribute("articles", articles);
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

}

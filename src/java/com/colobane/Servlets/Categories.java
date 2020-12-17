package com.colobane.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.colobane.utils.CartController;
import com.colobane.utils.CategoriesController;

public class Categories extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/category.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	CategoriesController categController = new CategoriesController();
    	CartController cartController = new CartController();
    	request = categController.getResponse(request);
    	request.setAttribute("count", cartController.cartSize(cartController.getCookieValue(request, "cart"))); 
    	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);    	
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

}

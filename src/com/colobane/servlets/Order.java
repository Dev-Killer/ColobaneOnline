package com.colobane.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.colobane.Bdd.ArticleQueries;
import com.colobane.Bdd.CommandeQueries;
import com.colobane.Beans.Article;
import com.colobane.utils.CartController;

@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/order.jsp";

	public Order() {
		super();
		// TODO Auto-generated constructor stub
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String push = request.getParameter("push");
		CartController cartController = new CartController();
		List<Article> item = new ArrayList<Article>();
		int itemLength = 0;
		String rem = request.getParameter("remove");
		if (rem != null) {
			item = getArticles(cartController.cartrem(cartController.getCookieValue(request, "cart"), rem));
		} else {
			item = getArticles(cartController.cartList(cartController.getCookieValue(request, "cart")));
		}
		Map<Article, Long> dup = sameItems(item);
		List<Article> articles = new ArrayList<Article>(dup.keySet());
		System.out.println(articles.size()); 
		itemLength = (item.size() > 0) ? item.size() : 0;
		int price = 0;
		for (Article article : articles) {
			price += article.getPrix();
		}
		if (push != null) {
			CommandeQueries queries = new CommandeQueries();
			List<Integer> t = new ArrayList<Integer>();
			for (int i = 0; i < articles.toString().split(",").length; i++) {
				t.add(Integer.parseInt(articles.toString().split(",")[i]));
			}
			try {
				queries.addCommande(t, request);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		int cartSize = cartController.cartSize(cartController.getCookieValue(request, "cart"));
		
		request.setAttribute("price", price); 
		request.setAttribute("articles", articles);
		request.setAttribute("dup", dup); 
		request.setAttribute("len", itemLength);
		request.setAttribute("count", cartSize);
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	public static List<Article> getArticles(List<String> listStrings) {
		List<Article> articles = new ArrayList<Article>();
		ArticleQueries queries = new ArticleQueries();
		for (int i = 0; i < listStrings.size(); i++) {
			articles.add(queries.getArticle(listStrings.get(i)));
		}
		return articles;
	}

	public static Map<Article, Long> sameItems(List<Article> articles) {
		List<Integer> list = new ArrayList<Integer>();
		Map<Article, Long> map = new HashMap<Article, Long>();
		for (Article article : articles) {
			list.add(article.getIdArticle());
		}
		Map<Integer, Long> resultMap = new HashMap<Integer, Long>();
	    list.forEach(e -> resultMap.put(e, resultMap.getOrDefault(e, 0L) + 1L));
	    for (Entry<Integer, Long> entry : resultMap.entrySet()) { 
	    	System.out.println("key = "+entry.getKey()+" - val = "+entry.getValue());
	    	
	    	map.put(articles.get(entry.getKey()), entry.getValue());
	    }
	    System.out.println(map.size()); 
	    return map; 
	}
}

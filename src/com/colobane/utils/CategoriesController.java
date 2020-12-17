package com.colobane.utils;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.colobane.Bdd.ArticleQueries;
import com.colobane.Beans.Article;

public class CategoriesController {

	public HttpServletRequest getResponse(HttpServletRequest request) {
		ArticleQueries queries = new ArticleQueries();
    	List<Article> articles = new ArrayList<Article>();
    	int numberPage = 0;
    	double numberArticles = 144.0;
    	double sizeToShow = 0.0;
    	String action = (request.getParameter("action") != null)? request.getParameter("action") : "";
    	String categ = (request.getParameter("categ") != null)? request.getParameter("categ") : "";
    	switch (categ) {
		case "mode":
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Asc.ord, "TYPE_CATEGORIE", CategEnum.Mode.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Desc.ord, "TYPE_CATEGORIE", CategEnum.Mode.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Asc.ord, "TYPE_CATEGORIE", CategEnum.Mode.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Desc.ord, "TYPE_CATEGORIE", CategEnum.Mode.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.ID_ARTICLE_Asc.ord, "TYPE_CATEGORIE", CategEnum.Mode.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;
		case "electronique":
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Asc.ord, "TYPE_CATEGORIE", CategEnum.Electronique.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Desc.ord, "TYPE_CATEGORIE", CategEnum.Electronique.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Asc.ord, "TYPE_CATEGORIE", CategEnum.Electronique.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Desc.ord, "TYPE_CATEGORIE", CategEnum.Electronique.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.ID_ARTICLE_Asc.ord, "TYPE_CATEGORIE", CategEnum.Electronique.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;
		case "chaussure":
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Asc.ord, "TYPE_CATEGORIE", CategEnum.Chaussure.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Desc.ord, "TYPE_CATEGORIE", CategEnum.Chaussure.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Asc.ord, "TYPE_CATEGORIE", CategEnum.Chaussure.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Desc.ord, "TYPE_CATEGORIE", CategEnum.Chaussure.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.ID_ARTICLE_Asc.ord, "TYPE_CATEGORIE", CategEnum.Chaussure.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;
		case "montre":
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Asc.ord, "TYPE_CATEGORIE", CategEnum.Montre.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Desc.ord, "TYPE_CATEGORIE", CategEnum.Montre.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Asc.ord, "TYPE_CATEGORIE", CategEnum.Montre.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Desc.ord, "TYPE_CATEGORIE", CategEnum.Montre.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.ID_ARTICLE_Asc.ord, "TYPE_CATEGORIE", CategEnum.Montre.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;
		case "bijoux":
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Asc.ord, "TYPE_CATEGORIE", CategEnum.Bijoux.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Desc.ord, "TYPE_CATEGORIE", CategEnum.Bijoux.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Asc.ord, "TYPE_CATEGORIE", CategEnum.Bijoux.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Desc.ord, "TYPE_CATEGORIE", CategEnum.Bijoux.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.ID_ARTICLE_Asc.ord, "TYPE_CATEGORIE", CategEnum.Bijoux.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;
		case "santebeaute":
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Asc.ord, "TYPE_CATEGORIE", CategEnum.SantéBeauté.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Desc.ord, "TYPE_CATEGORIE", CategEnum.SantéBeauté.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Asc.ord, "TYPE_CATEGORIE", CategEnum.SantéBeauté.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Desc.ord, "TYPE_CATEGORIE", CategEnum.SantéBeauté.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.ID_ARTICLE_Asc.ord, "TYPE_CATEGORIE", CategEnum.SantéBeauté.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;
		case "enfantsbebe":
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Asc.ord, "TYPE_CATEGORIE", CategEnum.EnfantsBébés.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Desc.ord, "TYPE_CATEGORIE", CategEnum.EnfantsBébés.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Asc.ord, "TYPE_CATEGORIE", CategEnum.EnfantsBébés.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Desc.ord, "TYPE_CATEGORIE", CategEnum.EnfantsBébés.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.ID_ARTICLE_Asc.ord, "TYPE_CATEGORIE", CategEnum.EnfantsBébés.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;
		case "sports":
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Asc.ord, "TYPE_CATEGORIE", CategEnum.Sports.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.PRIX_Desc.ord, "TYPE_CATEGORIE", CategEnum.Sports.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Asc.ord, "TYPE_CATEGORIE", CategEnum.Sports.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.NOM_Desc.ord, "TYPE_CATEGORIE", CategEnum.Sports.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesWithEqualFilterLimitedOrderedBy((int) numberArticles, ArticleOrder.ID_ARTICLE_Asc.ord, "TYPE_CATEGORIE", CategEnum.Sports.categ);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;

		default:
			switch (action) {
			case "lower":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesLimitedOrderedBy(0, ArticleOrder.PRIX_Asc.ord+" , "+ArticleOrder.ID_ARTICLE_Asc.ord);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);
		    	request.setAttribute("sort", 1);
				break;
			case "upper":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesLimitedOrderedBy(0, ArticleOrder.PRIX_Desc.ord+" , "+ArticleOrder.ID_ARTICLE_Asc.ord);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage); 
		    	request.setAttribute("sort", 2);
				break;
			case "atoz":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesLimitedOrderedBy(0, ArticleOrder.NOM_Asc.ord+" , "+ArticleOrder.ID_ARTICLE_Asc.ord);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 3);
				break;
			case "ztoa":
				queries = new ArticleQueries();
		    	articles = new ArrayList<Article>(); 
		    	articles = queries.getArticlesLimitedOrderedBy(0, ArticleOrder.NOM_Desc.ord+" , "+ArticleOrder.ID_ARTICLE_Asc.ord);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16);
		    	request.setAttribute("page", numberPage);  
		    	request.setAttribute("sort", 4); 
				break;
			default:
		    	articles = queries.getArticlesLimitedOrderedBy(0, ArticleOrder.ID_ARTICLE_Asc.ord);
		    	request.setAttribute("articles", articles);
		    	sizeToShow = (double) articles.size();
		    	numberPage = (int) Math.ceil(sizeToShow/16); 
		    	request.setAttribute("page", numberPage);  
				break;
			}
			break;
		}
		request.setAttribute("rep", categ);
    	return request;
	}
}

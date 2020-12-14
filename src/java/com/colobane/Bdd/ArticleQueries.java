package com.colobane.Bdd;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.colobane.Beans.Article;
import com.colobane.utils.ConnexionDB;


public class ArticleQueries {
	Connection con = ConnexionDB.connecterDB();

	public int getAllArticles() throws SQLException {
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT COUNT(*) from article");
		rs.next();
		return rs.getInt("COUNT(*)");
	}

	public void addArticle(Article article) {
		try {

			PreparedStatement preparedStatement = con.prepareStatement(
					"INSERT INTO article (NOM,IMAGE,PRIX,QUANTITE,TYPE_CATEGORIE,DESCRIPTION) VALUES(?,?,?,?,?,?);");
			preparedStatement.setString(1, article.getNomArticle());
			preparedStatement.setString(2, article.getImage());
			preparedStatement.setFloat(3, article.getPrix());
			preparedStatement.setFloat(4, article.getQuantite());
			preparedStatement.setString(5, article.getCategorie());
			preparedStatement.setString(6, article.getDescription());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public List<Article> getAllArticlesList() {
		List<Article> articles = new ArrayList<Article>();
		Statement stmt;
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * from article;");
			boolean next = rs.next();
			while (next) {
				int idArticle = rs.getInt("ID_ARTICLE");
				String nomArticle = rs.getString("NOM");
				String image = rs.getString("IMAGE");
				Float prix = rs.getFloat("PRIX");
				String description = rs.getString("DESCRIPTION");
				int quantite = rs.getInt("QUANTITE");
				String categorie = rs.getString("TYPE_CATEGORIE");
				Date dateCreation = rs.getDate("DATE_CREATION");

				articles.add(new Article(idArticle, nomArticle, image, prix, description, quantite, categorie,
						dateCreation));

				rs.next();
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return articles;
	}

	public List<Article> getArticlesByCateg(String categ) {
		List<Article> articles = new ArrayList<Article>();
		Statement stmt;
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM article WHERE article.TYPE_CATEGORIE = '" + categ
					+ "' ORDER BY article.DATE_CREATION DESC;");
			boolean next = rs.next();
			while (next) {
				int idArticle = rs.getInt("ID_ARTICLE");
				String nomArticle = rs.getString("NOM");
				String image = rs.getString("IMAGE");
				Float prix = rs.getFloat("PRIX");
				String description = rs.getString("DESCRIPTION");
				int quantite = rs.getInt("QUANTITE");
				String categorie = rs.getString("TYPE_CATEGORIE");
				Date dateCreation = rs.getDate("DATE_CREATION");

				articles.add(new Article(idArticle, nomArticle, image, prix, description, quantite, categorie,
						dateCreation));

				rs.next();
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return articles;
	}

	public List<Article> getArticlesByPriceRangeOrderedBy(int min, int max, String orderedBy) {

		List<Article> articles = new ArrayList<Article>();
		Statement stmt;
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM article WHERE PRIX BETWEEN " + min + " AND " + max + ""
					+ ((orderedBy != null) ? " ORDER BY "+orderedBy+";" : ";"));
			boolean next = rs.next();
			while (next) {
				int idArticle = rs.getInt("ID_ARTICLE");
				String nomArticle = rs.getString("NOM");
				String image = rs.getString("IMAGE");
				Float prix = rs.getFloat("PRIX");
				String description = rs.getString("DESCRIPTION");
				int quantite = rs.getInt("QUANTITE");
				String categorie = rs.getString("TYPE_CATEGORIE");
				Date dateCreation = rs.getDate("DATE_CREATION");

				articles.add(new Article(idArticle, nomArticle, image, prix, description, quantite, categorie,
						dateCreation));

				rs.next();
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return articles;
	}

	public List<Article> getArticlesLimitedOrderedBy(int limit, String orderedBy) {
		List<Article> articles = new ArrayList<Article>();
		Statement stmt;
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM article " + ((orderedBy != null) ? " ORDER BY "+orderedBy+((limit > 0) ? " LIMIT "+limit+";" : ";") : ((limit > 0) ? " LIMIT "+limit+";" : ";")));
			boolean next = rs.next();
			while (next) {
				int idArticle = rs.getInt("ID_ARTICLE");
				String nomArticle = rs.getString("NOM");
				String image = rs.getString("IMAGE");
				Float prix = rs.getFloat("PRIX");
				String description = rs.getString("DESCRIPTION");
				int quantite = rs.getInt("QUANTITE");
				String categorie = rs.getString("TYPE_CATEGORIE");
				Date dateCreation = rs.getDate("DATE_CREATION");

				articles.add(new Article(idArticle, nomArticle, image, prix, description, quantite, categorie,
						dateCreation));

				rs.next();
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return articles;
	}
}

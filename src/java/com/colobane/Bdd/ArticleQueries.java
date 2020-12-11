/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Bdd;

import com.colobane.Beans.Article;
import com.colobane.utils.ConnexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author user
 */
public class ArticleQueries {

    Connection con = ConnexionDB.connecterDB();

    public int getAllArticles() throws SQLException {
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT COUNT(*) from article");
        rs.next();
        return rs.getInt("COUNT(*)");
    }
    public void addArticle(Article article){
       try {
           

            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO article (IMAGE,PRIX,TYPE_CATEGORIE,DESCRIPTION) VALUES(?,?,?,?);");
            preparedStatement.setString(1, article.getImage());
            preparedStatement.setFloat(2, article.getPrix());
            preparedStatement.setString(3,article.getCategorie());
            preparedStatement.setString(4, article.getDescription());
             
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
  

}

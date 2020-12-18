package com.colobane.Bdd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.colobane.utils.ConnexionDB;

public class ContenirQueries {

	Connection con = ConnexionDB.connecterDB();
	public void addLine(int idArticle,int idCommande) {
		
		   try {
	            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO contenir (ID_ARTICLE,ID_COMMANDE) VALUES(?,?);");
	            preparedStatement.setInt(1,idArticle);
	            preparedStatement.setInt(2,idCommande);
	           
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}
}

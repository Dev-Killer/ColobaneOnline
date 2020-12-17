package com.colobane.Bdd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.colobane.utils.ConnexionDB;

public class LivrerQueries {
	Connection con = ConnexionDB.connecterDB();
	
	public void addCompleteShipping(String codeLiv, String codeCom) {
		CommandeQueries cQueries = new CommandeQueries();
		LivreurQueries lQueries = new LivreurQueries();
		
		try {
			PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO livrer (ID_COMMANDE, ID_LIVRAISON) VALUES (?,?);");
			preparedStatement.setInt(1, cQueries.getIdFromCodeCom(codeCom));
			preparedStatement.setInt(2, lQueries.getIdFromCodeLiv(codeLiv));
			preparedStatement.executeUpdate();
			CommandeQueries comQuery = new CommandeQueries();
			comQuery.setComStatus(codeCom);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.exit(0);
		}
	}
}

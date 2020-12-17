package com.colobane.Bdd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.colobane.utils.ConnexionDB;

public class CommandeQueries {
	Connection con = ConnexionDB.connecterDB();

	public List<String> getAllCodeComRemainingList() {
		String query = "SELECT CODE_COMMANDE FROM commande WHERE LIVREAUCLIENT = 0 and "
				+ "ID_COMMANDE NOT IN (SELECT ID_COMMANDE FROM livrer);";
		List<String> allCodeComLeft = new ArrayList<String>();
		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(query);
			
			boolean next = result.next();
			while (next) {
				allCodeComLeft.add(result.getString("CODE_COMMANDE"));
				next = result.next();
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
				
		return allCodeComLeft;
	}
	
	public void setComStatus(String code_Com) {
		Connection con = ConnexionDB.connecterDB();
		
			try {
				PreparedStatement preparedStatement = con.prepareStatement("update commande set LIVREAUCLIENT = ? where CODE_COMMANDE = ?;");
				preparedStatement.setInt(1, 1);
				preparedStatement.setString(2, code_Com);
				preparedStatement.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public int getIdFromCodeCom(String code_Com) {
		int id = 0;
		String query = "SELECT ID_COMMANDE FROM commande WHERE CODE_COMMANDE = '"+code_Com+"';";

		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(query);
			result.next();
			id = result.getInt("ID_COMMANDE");			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			System.exit(0);
		}
		
		return id;
	}
}

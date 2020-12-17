package com.colobane.Bdd;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.colobane.utils.ConnexionDB;

public class LivreurQueries {
	Connection con = ConnexionDB.connecterDB();

	public List<String> getIdLivs() {
		List<String> livList = new ArrayList<String>();
		String query = "SELECT CODE_LIVRAISON FROM livraison;";

		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(query);

			boolean next = result.next();
			while (next) {
				livList.add(result.getString("CODE_LIVRAISON"));
				next = result.next();
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return livList;
	}

	public int getIdFromCodeLiv(String codeLiv) {
		int id = 0;
		String query = "SELECT ID_LIVRAISON FROM livraison WHERE CODE_LIVRAISON = '"+codeLiv+"';";

		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(query);
			result.next();
			id = result.getInt("ID_LIVRAISON");			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			System.exit(0);
		}
		
		return id;
	}
}

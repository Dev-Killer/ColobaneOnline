package com.colobane.Bdd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
			PreparedStatement preparedStatement = con
					.prepareStatement("update commande set LIVREAUCLIENT = ? where CODE_COMMANDE = ?;");
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
		String query = "SELECT ID_COMMANDE FROM commande WHERE CODE_COMMANDE = '" + code_Com + "';";

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

	/* No used */
	public int getCountCommande() throws SQLException {
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT COUNT(*) from commande");
		rs.next();
		return rs.getInt("COUNT(*)");
	}

	public String genIdCommande() {
		int leftLimit = 48; // numeral '0'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 6;
		Random random = new Random();

		String generatedString = random.ints(leftLimit, rightLimit + 1)
				.filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97)).limit(targetStringLength)
				.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append).toString();
		while (getIdFromCodeCom(generatedString) == 0) {
			generatedString = random.ints(leftLimit, rightLimit + 1)
					.filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97)).limit(targetStringLength)
					.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append).toString();

		}
		return generatedString;
	}
    
	
	public int addCommande(List<Integer> articles,HttpServletRequest request) throws SQLException {
        HttpSession session= request.getSession();
        LocalDateTime myDateObj = LocalDateTime.now();
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        String formattedDate = myDateObj.format(myFormatObj);
        int idCommande=getCountCommande()+1;
        int idAcheteur= (int) session.getAttribute("id_user");
		ContenirQueries contenir =new ContenirQueries();
		PreparedStatement preparedStatement = con.prepareStatement(
				"INSERT INTO commande (ID_ACHETEUR,DATE_COMMANDE,CODE_COMMANDE,LIVREAUCLIENT) VALUES(?,?,?,?);");
		preparedStatement.setInt(1,idAcheteur);
		preparedStatement.setTimestamp(2,java.sql.Timestamp.valueOf(formattedDate));
		preparedStatement.setString(3,genIdCommande());
		preparedStatement.setInt(4,0);

		preparedStatement.executeUpdate();
		for (int i = 0; i < articles.size(); i++) {
			 contenir.addLine(articles.get(i), idCommande);
		}
	  
		return 0;

	}
	

}

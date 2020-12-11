/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Bdd;

import com.colobane.Beans.Vendeur;
import com.colobane.utils.ConnexionDB;
import com.colobane.utils.Sha256;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class VendeurQueries {
     
    Connection con =ConnexionDB.connecterDB();
    
public void addVendeur(Vendeur vendeur){
       try {
           

            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO vendeur (NOM,PRENOM,PASSWORD,ADRESSE,TELEPHONE) VALUES(?,?,?,?,?);");
            preparedStatement.setString(1, vendeur.getNom());
            preparedStatement.setString(2, vendeur.getPrenom());
            preparedStatement.setString(3, Sha256.sha256(vendeur.getPassword()));
            preparedStatement.setString(4, vendeur.getAdresse());
            preparedStatement.setString(5, vendeur.getTelephone());
             
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
  
        
 }
 public int[] findVendeur(String email,String password) throws SQLException {
        ResultSet rs = null;
        int resultSearch[] = new int[2];   
        try {
            PreparedStatement preparedStatement = con.prepareStatement("SELECT *FROM vendeur where  ADRESSE=? and PASSWORD=? ;");
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,password);
            preparedStatement.executeQuery();

            rs = preparedStatement.executeQuery(); 
      
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        while (rs.next()) {
               resultSearch[0]=1;
               resultSearch[1]=rs.getInt("ID_ACHETEUR");
               rs.close();
        
            return resultSearch;
        }
        rs.close();
        resultSearch[0]=0;
   
         return resultSearch;
        
    }
public List<Vendeur> getAllVendeurs() {
        List<Vendeur> vendeurs = new ArrayList<Vendeur>();
        Statement statement = null;
        ResultSet resultat = null;

        
        try {
            statement = con.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT *FROM vendeur;");

            // Récupération des données
            while (resultat.next()) {
                String nom = resultat.getString("NOM");
                String prenom = resultat.getString("PRENOM");
                String password = resultat.getString("PASSWORD");
                String adresse = resultat.getString("ADRESSE");
                String telephone = resultat.getString("TELEPHONE");
                
                
                
                Vendeur vendeur = new Vendeur(nom, prenom, password, adresse,telephone);
                
                vendeurs.add(vendeur);
            }
        } catch (SQLException e) {
        } finally {
            // Fermeture de la connexion
            try {
                if (resultat != null)
                    resultat.close();
                if (statement != null)
                    statement.close();
                if (con != null)
                    con.close();
            } catch (SQLException ignore) {
            }
        }
        
        return vendeurs;
    }
}

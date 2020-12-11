/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Bdd;

import com.colobane.Beans.Acheteur;
import com.colobane.Beans.Vendeur;
import com.colobane.utils.ConnexionDB;
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
public class AcheteurQueries {

    Connection con = ConnexionDB.connecterDB();
    
    public void addAcheteur(Acheteur acheteur) {
        try {
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO acheteur (NOM,PRENOM,PASSWORD,ADRESSE,TELEPHONE) VALUES(?,?,?,?,?);");
            preparedStatement.setString(1, acheteur.getNom());
            preparedStatement.setString(2, acheteur.getPrenom());
            preparedStatement.setString(3,acheteur.getPassword());
            preparedStatement.setString(4, acheteur.getAdresse());
            preparedStatement.setString(5, acheteur.getTelephone());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public int[] findAcheteur(String email,String password) throws SQLException {
        ResultSet rs = null;
        int resultSearch[] = new int[2];   
        try {
            PreparedStatement preparedStatement = con.prepareStatement("SELECT *FROM acheteur where  ADRESSE=? and PASSWORD=? ;");
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
            return resultSearch;
        }       
        resultSearch[0]=0;
   
         return resultSearch;
        
    }

    public List<Acheteur> getAllAcheteurs() {
        List<Acheteur> acheteurs = new ArrayList<Acheteur>();
        Statement statement = null;
        ResultSet resultat = null;

        
        try {
            statement = con.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT *FROM acheteur;");

            // Récupération des données
            while (resultat.next()) {
                String nom = resultat.getString("NOM");
                String prenom = resultat.getString("PRENOM");
                String password = resultat.getString("PASSWORD");
                String adresse = resultat.getString("ADRESSE");
                String telephone = resultat.getString("TELEPHONE");
                
                
                
                Acheteur acheteur = new Acheteur(nom, prenom, password, adresse,telephone);
                
                acheteurs.add(acheteur);
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
        
        return acheteurs;
    }
}

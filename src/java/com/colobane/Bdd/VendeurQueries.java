/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Bdd;

import com.colobane.beans.Vendeur;
import com.colobane.utils.ConnexionDB;
import com.colobane.utils.Sha256;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
}

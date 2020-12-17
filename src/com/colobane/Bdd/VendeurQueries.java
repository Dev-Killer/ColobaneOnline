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
            return resultSearch;
        }       
        resultSearch[0]=0;
   
         return resultSearch;
        
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Bdd;

import com.colobane.Beans.Acheteur;
import com.colobane.utils.ConnexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.HashMap;

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

}

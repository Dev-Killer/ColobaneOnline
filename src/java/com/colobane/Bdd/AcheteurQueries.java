/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.colobane.Bdd;

import com.colobane.Beans.Acheteur;
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
public class AcheteurQueries {

    Connection con = ConnexionDB.connecterDB();

    public void addAcheteur(Acheteur acheteur) {
        try {
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO acheteur (NOM,PRENOM,PASSWORD,ADRESSE,TELEPHONE) VALUES(?,?,?,?,?);");
            preparedStatement.setString(1, acheteur.getNom());
            preparedStatement.setString(2, acheteur.getPrenom());
            preparedStatement.setString(3, Sha256.sha256(acheteur.getPassword()));
            preparedStatement.setString(4, acheteur.getAdresse());
            preparedStatement.setString(5, acheteur.getTelephone());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public boolean findAcheteur(Acheteur acheteur) throws SQLException {
        ResultSet rs = null;

        try {
            PreparedStatement preparedStatement = con.prepareStatement("SELECT *FROM acheteur where  NOM=? and PASSWORD=? ;");
            preparedStatement.setString(1, acheteur.getNom());
            preparedStatement.setString(2, acheteur.getPassword());

            preparedStatement.executeQuery();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (rs.next()) {
            return true;
        } else {
            return false;
        }
    }

}

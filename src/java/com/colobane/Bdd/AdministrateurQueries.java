package com.colobane.Bdd;

import com.colobane.utils.ConnexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdministrateurQueries {
   
      Connection con =ConnexionDB.connecterDB();
      public int[] findAdmin(String nom,String password) throws SQLException {
        ResultSet rs = null;
        int resultSearch[] = new int[2];   
        try {
            PreparedStatement preparedStatement = con.prepareStatement("SELECT *FROM administrateur where  NOM=? and PASSWORD=? ;");
            preparedStatement.setString(1,nom);
            preparedStatement.setString(2,password);
            preparedStatement.executeQuery();

            rs = preparedStatement.executeQuery(); 
      
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        while (rs.next()) {
               resultSearch[0]=1;
               resultSearch[1]=rs.getInt("ID_ADMINISTRATEUR");
            return resultSearch;
        }       
        resultSearch[0]=0;
   
         return resultSearch;
        
    }

}

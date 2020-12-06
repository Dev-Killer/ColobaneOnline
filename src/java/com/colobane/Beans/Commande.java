package com.colobane.Beans;

import java.util.*;

public class Commande {
   public int idCommande;
   public java.util.Date dateCommande;
   public boolean livreAuClient;

    public int getIdCommande() {
        return idCommande;
    }

    public void setIdCommande(int idCommande) {
        this.idCommande = idCommande;
    }

    public Date getDateCommande() {
        return dateCommande;
    }

    public void setDateCommande(Date dateCommande) {
        this.dateCommande = dateCommande;
    }

    public boolean isLivreAuClient() {
        return livreAuClient;
    }

    public void setLivreAuClient(boolean livreAuClient) {
        this.livreAuClient = livreAuClient;
    }
   
  
}
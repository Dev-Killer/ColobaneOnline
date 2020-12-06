package com.colobane.beans;

import java.util.*;
public class Livraison {
   public int idLivraison;
   public float frais;
   
   public java.util.Collection<Commande> livrer;

    public int getIdLivraison() {
        return idLivraison;
    }

    public void setIdLivraison(int idLivraison) {
        this.idLivraison = idLivraison;
    }

    public float getFrais() {
        return frais;
    }

    public void setFrais(float frais) {
        this.frais = frais;
    }

    public Collection<Commande> getLivrer() {
        return livrer;
    }

    public void setLivrer(Collection<Commande> livrer) {
        this.livrer = livrer;
    }
   
   

}
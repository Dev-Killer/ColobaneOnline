package com.colobane.Beans;

import java.util.*;

public class Acheteur {

    public int idAcheteur;
    public java.lang.String nom;

    
    public java.lang.String prenom;
    public java.lang.String password;
    public java.lang.String adresse;
    public java.lang.String telephone;

    public java.util.Collection<Article> panier;
    public java.util.Collection<Commande> commande;

    
    public void setIdAcheteur(int idAcheteur) {
        this.idAcheteur = idAcheteur;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public int getIdAcheteur() {
        return idAcheteur;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getPassword() {
        return password;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getTelephone() {
        return telephone;
    }
}

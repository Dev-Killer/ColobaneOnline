package com.colobane.beans;

import java.util.*;

public class Administrateur {
   public int idAdministrateur;
   public java.lang.String nom;
   public java.lang.String prenom;
   public java.lang.String password;
   public java.lang.String adresse;
   
   public java.util.Collection<Vendeur> vendeur;

    public int getIdAdministrateur() {
        return idAdministrateur;
    }

    public void setIdAdministrateur(int idAdministrateur) {
        this.idAdministrateur = idAdministrateur;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public Collection<Vendeur> getVendeur() {
        return vendeur;
    }

    public void setVendeur(Collection<Vendeur> vendeur) {
        this.vendeur = vendeur;
    }
   
   
}
package com.colobane.Beans;

public class Vendeur {
   public int idVendeur;
   public java.lang.String nom;
   public java.lang.String prenom;
   public java.lang.String password;
   public java.lang.String adresse;
   public java.lang.String telephone;
   
   
    public Vendeur(String nom, String prenom, String password, String adresse, String telephone) {
        this.nom = nom;
        this.prenom = prenom;
        this.password = password;
        this.adresse = adresse;
        this.telephone = telephone;
    }
   public Administrateur administrateur;

    public int getIdVendeur() {
        return idVendeur;
    }

    public void setIdVendeur(int idVendeur) {
        this.idVendeur = idVendeur;
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

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

   
}
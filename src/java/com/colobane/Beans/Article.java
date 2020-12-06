package com.colobane.Beans;
import java.util.*;
public class Article {
   public int idArticle;
   public java.lang.String image;
   public float prix;
   public java.lang.String description;
   
   public java.util.Collection<Commande> contenir;
   public java.util.Collection<Acheteur> panier;
   public java.util.Collection<Vendeur> inserer;
   public Categorie categorie;

    public int getIdArticle() {
        return idArticle;
    }

    public void setIdArticle(int idArticle) {
        this.idArticle = idArticle;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getPrix() {
        return prix;
    }

    public void setPrix(float prix) {
        this.prix = prix;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Collection<Commande> getContenir() {
        return contenir;
    }

    public void setContenir(Collection<Commande> contenir) {
        this.contenir = contenir;
    }

    public Collection<Acheteur> getPanier() {
        return panier;
    }

    public void setPanier(Collection<Acheteur> panier) {
        this.panier = panier;
    }

    public Collection<Vendeur> getInserer() {
        return inserer;
    }

    public void setInserer(Collection<Vendeur> inserer) {
        this.inserer = inserer;
    }

    public Categorie getCategorie() {
        return categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }
   
   
}
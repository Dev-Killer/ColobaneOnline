package com.colobane.beans;
import java.util.*;

public class Categorie {
   public int idCategorie;
   public String typeCategorie;
   
   public java.util.Collection<Article> article;

    public int getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(int idCategorie) {
        this.idCategorie = idCategorie;
    }

    public String getTypeCategorie() {
        return typeCategorie;
    }

    public void setTypeCategorie(String typeCategorie) {
        this.typeCategorie = typeCategorie;
    }

    public Collection<Article> getArticle() {
        return article;
    }

    public void setArticle(Collection<Article> article) {
        this.article = article;
    }
   
  
}
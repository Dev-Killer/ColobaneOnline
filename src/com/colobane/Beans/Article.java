package com.colobane.Beans;

import java.sql.Date;

public class Article {
	private int idArticle;
	private String nomArticle;
	private String image;
	private Float prix;
	private String description;
	private int quantite;
	private String categorie;
	private Date dateCreation;
	
	

	public Article() {
		
	}

	public Article(int idArticle, String nomArticle, String image, Float prix, String description, int quantite,
			String categorie, Date dateCreation) {
		this.idArticle = idArticle;
		this.nomArticle = nomArticle;
		this.image = image;
		this.prix = prix;
		this.description = description;
		this.quantite = quantite;
		this.categorie = categorie;
		this.dateCreation = dateCreation;
	}

	public Article(String nomArticle, String image, Float prix, String description, int quantite,
			String categorie) {
		this.nomArticle = nomArticle;
		this.image = image;
		this.prix = prix;
		this.description = description;
		this.quantite = quantite;
		this.categorie = categorie;
	}

	public int getIdArticle() {
		return idArticle;
	}

	public void setIdArticle(int idArticle) {
		this.idArticle = idArticle;
	}

	public String getNomArticle() {
		return nomArticle;
	}

	public void setNomArticle(String nomArticle) {
		this.nomArticle = nomArticle;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Float getPrix() {
		return prix;
	}

	public void setPrix(Float prix) {
		this.prix = prix;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	@Override
	public String toString() {
		return "Article [idArticle=" + idArticle + ", nomArticle=" + nomArticle + ", image=" + image + ", prix=" + prix
				+ ", description=" + description + ", quantite=" + quantite + ", categorie=" + categorie
				+ ", dateCreation=" + dateCreation + "]";
	}

	
}
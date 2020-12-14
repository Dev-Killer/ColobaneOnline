package com.colobane.utils;

public enum ArticleOrder {
	ID_ARTICLE_Asc ("ID_ARTICLE ASC"),
	ID_ARTICLE_Desc ("ID_ARTICLE DESC"),
	NOM_Asc ("NOM ASC"),
	NOM_Desc ("NOM DESC"),
	IMAGE_Asc ("IMAGE ASC"),
	IMAGE_Desc ("IMAGE DESC"),
	PRIX_Asc ("PRIX ASC"),
	PRIX_Desc ("PRIX DESC"),
	DESCRIPTION_Asc ("DESCRIPTION ASC"),
	DESCRIPTION_Desc ("DESCRIPTION DESC"),
	QUANTITE_Asc ("QUANTITE ASC"),
	QUANTITE_Desc ("QUANTITE DESC"),
	TYPE_CATEGORIE_Asc ("TYPE_CATEGORIE ASC"),
	TYPE_CATEGORIE_Desc ("TYPE_CATEGORIE DESC"),
	DATE_CREATION_Asc ("DATE_CREATION ASC"),
	DATE_CREATION_Desc ("DATE_CREATION DESC");
	
	public final String ord;
	
	private ArticleOrder(String ord) {
		this.ord = ord;
	}
}

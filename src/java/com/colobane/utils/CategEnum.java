package com.colobane.utils;

public enum CategEnum {
	Mode ("Mode"),
	Electronique("Electronique"),
	Chaussure("Chaussure"),
	Montre("Montre"),
	Bijoux("Bijoux"),
	SantéBeauté("Santé & Beauté"),
	EnfantsBébés("Enfants & Bébés"),
	Sports("Sports");
	
	public final String categ;
	
	private CategEnum(String categ) {
		this.categ = categ;
		// TODO Auto-generated constructor stub
	}
}

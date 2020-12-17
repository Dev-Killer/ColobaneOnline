package com.colobane.utils;

public enum CategEnum {
	Mode ("Mode"),
	Electronique("Electronique"),
	Chaussure("Chaussure"),
	Montre("Montre"),
	Bijoux("Bijoux"),
	SantéBeauté("Santé & Beauté"),
	EnfantsBébés("Enfant & Bébés"),
	Sports("Sport");
	
	public final String categ;
	
	private CategEnum(String categ) {
		this.categ = categ;
		// TODO Auto-generated constructor stub
	}
}

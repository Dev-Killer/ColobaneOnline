package com.colobane.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CartController {
	public String cartListString(String cart ,String idItem) {
		if (cart != null && !cart.equals("")) {;
			String[] str = cart.split(",");
			List<String> tes = new ArrayList<String>(Arrays.asList(str));
			tes.add(idItem);
			String string = tes.toString();
			string = string.substring(1, string.length()-1);
			string = string.replaceAll("\\s+","");
			return string;
		} else {
			List<String> testa = new ArrayList<String>();
			testa.add(idItem);
			String string = testa.toString();
			string = string.substring(1, string.length()-1);
			string = string.replaceAll("\\s+","");
			return string;
		}
		
	}
	
	public List<String> cartList(String cart) {
		if (cart != null && !cart.equals("")) {;
			String[] str = cart.split(",");
			List<String> tes = new ArrayList<String>(Arrays.asList(str));
			return tes;
		} else {
			return null;
		}
		
	}
	
	public List<String> cartrem(String cart, String str1) {
		if (cart != null && !cart.equals("")) {;
			String[] str = cart.split(",");
			List<String> tes = new ArrayList<String>(Arrays.asList(str));
			int t = Integer.parseInt(str1);
			for (int i = 0; i < tes.size(); i++) {
				if (tes.get(i) == str1) {
					t = i;				
				}
			}
			tes.remove(t);
			return tes;
		} else {
			return null;
		}
		
	}
	
	public int cartSize(String cart) {
		if (cart != null && !cart.equals("")) {;
			String[] str = cart.split(",");
			List<String> tes = new ArrayList<String>(Arrays.asList(str));
			return tes.size();
		} else {
			return 0;
		}
		
	}
	/**
	 * Méthode utilitaire gérant la récupération de la valeur d'un cookie donné
	 * depuis la requête HTTP.
	 */
	public String getCookieValue(HttpServletRequest request, String nom) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie != null && nom.equals(cookie.getName())) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}
	
}

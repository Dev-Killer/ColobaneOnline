package com.colobane.utils;

import com.colobane.Beans.Acheteur;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;

public class ValidationForm {

    private static final String CHAMP_NOM = "nom";
    private static final String  CHAMP_PRENOM = "prenom";
    private static final String CHAMP_PASS = "password";
    private static final String CHAMP_CONF = "confirmation";
    private static final String CHAMP_ADRESSE = "adresse";
     private static final String CHAMP_TELEPHONE = "telephone";
   
    private static final Pattern VALID_EMAIL_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
    private static final Pattern VALID_PASSWORD_REGEX = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$");
    private Map<String, String> erreurs = new HashMap<String, String>();

    private void setErreur(String champ, String message) {
        erreurs.put(champ, message);
    }

    
    public Map<String, String> getErreurs() {
        return erreurs;
    }

    private static String getValeurChamp(HttpServletRequest request, String nomChamp) {
        String valeur = request.getParameter(nomChamp);
        if (valeur == null || valeur.trim().length() == 0) {
            return null;
        } else {
            return valeur.trim();
        }
    }

    public static void emailValidation(String email) throws Exception {
        Matcher matcher = VALID_EMAIL_REGEX.matcher(email);
        if (!email.isEmpty()) {
            if (!matcher.find()==true) {
                throw new Exception("Veuillez entrer un email valide");
            }

        } else {
            throw new Exception("Veuillez entrer un email ");

        }
    }

    public static void passwordValidation(String password, String confirmation) throws Exception {
        Matcher matcher = VALID_PASSWORD_REGEX.matcher(password);
        if (!password.isEmpty() && !confirmation.isEmpty()) {
            if (!password.equals(confirmation)) {
                throw new Exception("Les mots de passe sont differents");

            }
            if (!matcher.find() == true) {
                throw new Exception("Veuillez respecter le format de mot de passe");
            }

        } else {
            throw new Exception("Veuillez saisir un mot de passe");
        }
    }

    private void validationNom(String nom) throws Exception {
        if (nom.isEmpty() || nom == null) {
            throw new Exception("Le nom d'utilisateur ne doit pas etre nul");
        }
    }

    public boolean inscrire(HttpServletRequest request) {
        String nom = getValeurChamp(request, CHAMP_NOM);
        String prenom = getValeurChamp(request, CHAMP_NOM);
        String motDePasse = getValeurChamp(request, CHAMP_PASS);
        String confirmation = getValeurChamp(request, CHAMP_CONF);
        String adresse = getValeurChamp(request, CHAMP_ADRESSE);
        Acheteur acheteur = new Acheteur();

        try {
            emailValidation(adresse);
        } catch (Exception e) {
            setErreur(CHAMP_ADRESSE, e.getMessage());
        }
        acheteur.setAdresse(adresse);

        try {
            passwordValidation(motDePasse, confirmation);
        } catch (Exception e) {
            setErreur(CHAMP_PASS, e.getMessage());
                }
        acheteur.setPassword(motDePasse);

        try {
            validationNom(nom);
        } catch (Exception e) {
            setErreur(CHAMP_NOM, e.getMessage());
        }
        try {
            validationNom(prenom);
        } catch (Exception e) {
            setErreur(CHAMP_PRENOM, e.getMessage());
        }

        if (erreurs.isEmpty()) {
            return true;
        } else {
        return false;
        }

    }

}

package com.colobane.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.jni.Time;

import com.colobane.Bdd.ArticleQueries;
import com.colobane.Beans.Article;

public class ImageArticle {
    public static final int TAILLE_TAMPON = 10240;
	
	
	public void ecrireFichier( Part part, String nomFichier, String chemin ) throws IOException {
        BufferedInputStream entree = null;
        BufferedOutputStream sortie = null;
        try {
            entree = new BufferedInputStream(part.getInputStream(), TAILLE_TAMPON);
            sortie = new BufferedOutputStream(new FileOutputStream(new File(chemin + nomFichier)), TAILLE_TAMPON);

            byte[] tampon = new byte[TAILLE_TAMPON];
            int longueur;
            while ((longueur = entree.read(tampon)) > 0) {
                sortie.write(tampon, 0, longueur);
            }
        } finally {
            try {
                sortie.close();
            } catch (IOException ignore) {
            }
            try {
                entree.close();
            } catch (IOException ignore) {
            }
        }
    }
    
    public String getNomFichier( Part part ) {
        for ( String contentDisposition : part.getHeader( "content-disposition" ).split( ";" ) ) {
            if ( contentDisposition.trim().startsWith( "filename" ) ) {
                return contentDisposition.substring( contentDisposition.indexOf( '=' ) + 1 ).trim().replace( "\"", "" );
            }
        }
        return null;
    }   
    
    public boolean isImageFile(String str)
    {
        // Regex to check valid image file extension.
        String regex
            = "([^\\s]+(\\.(?i)(jpe?g|png))$)";
 
        // Compile the ReGex
        Pattern p = Pattern.compile(regex);
 
        // If the string is empty
        // return false
        if (str == null) {
            return false;
        }
 
        // Pattern class contains matcher() method
        // to find matching between given string
        // and regular expression.
        Matcher m = p.matcher(str);
 
        // Return if the string
        // matched the ReGex
        return m.matches();
    }
       
    public String[] processFormField(FileItem item) {
    	// Process the uploaded items
    	// Process a regular form field
    	String[] returned = new String[2];
    	if (item.isFormField()) {
    	    String name = item.getFieldName();
    	    returned[0] = name;
    	    String value = item.getString();
    	    returned[1] = value;
    	}
    	
    	return returned;
    }
    
    public HashMap<String, Object> processUploadedFile(FileItem item, HttpServletRequest request) {
    	HashMap<String, Object> fileInfo = new HashMap<String, Object>();
    	// Process a file upload
    	if (!item.isFormField()) {
    	    String fieldName = item.getFieldName();
    	    String fileName = item.getName();
    	    String contentType = item.getContentType();
    	    boolean isInMemory = item.isInMemory();
    	    long sizeInBytes = item.getSize();
    	    String newFilename = Time.now()+"."+fileName.split("\\.")[fileName.split("\\.").length-1];
//    	    System.out.println(newFilename+"\n\n");
    	    String root = request.getServletContext().getRealPath("/");
    	    File path = new File(root + "/assets/imageUp");
//    	    System.out.println("image: "+fieldName+" => Nom Image "+fileName+"\ncontentType => "
//    	    +contentType+"\nisInMemory => "+isInMemory+"\nsizeInBytes => "+sizeInBytes+
//    	    "\n\n item => "+item+"\n\n root => "+root);
    	    if (!path.exists()) {
    	    	path.mkdirs();
			}
    	    File uploadedFile = new File(path + "/" + newFilename);
    	    fileInfo.put("name", newFilename);
    	    fileInfo.put("path", uploadedFile.getAbsolutePath());
    	    fileInfo.put("contentType", contentType);
    	    fileInfo.put("taille", sizeInBytes);
    	    fileInfo.put("fieldNam", fieldName);
    	    fileInfo.put("isInMemory", isInMemory);
            try {
				item.write(uploadedFile);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	    
    	}
		return fileInfo;
    }
    
    public HashMap<String, HashMap<String, Object>> handleMultipartForm(HttpServletRequest request) {
    	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    	HashMap<String, Object> hMap = new HashMap<String, Object>();
    	HashMap<String, HashMap<String, Object>> map = new HashMap<String, HashMap<String, Object>>();
    	// Create a factory for disk-based file items
    	if (isMultipart) {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			
			try {
				List<?> items = upload.parseRequest(request);
				Iterator<?> iterator = items.iterator();
				int index = 1;
				while(iterator.hasNext()) {
					FileItem item = (FileItem) iterator.next();
					if (item.isFormField()) {
						hMap.put(processFormField(item)[0], processFormField(item)[1]);
					} else if (!item.isFormField()) {
						map.put("uploadedFile"+index, processUploadedFile(item, request));
						index++;
					}
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		} 
    	map.put("formField", hMap);
		return map; 
    }
    
    public String articleFormCheck(HttpServletRequest request) {
    	String returnedMsg = "";
    	ArticleQueries queries = new ArticleQueries();
    	HashMap<String, HashMap<String, Object>> hMap = handleMultipartForm(request);
    	HashMap<String, ?> formField = hMap.get("formField");
    	HashMap<String, ?> uploadedFile = hMap.get("uploadedFile1");
    	ValidationForm form = new ValidationForm();
    	ArrayList<String> categList = new ArrayList<String>(Arrays.asList("Mode", "Electronique", "Chaussure", "Montre", "Bijoux", "Santé & Beauté",
    			"Enfant & bébés", "Sport"));
    	    	
    	
    	String nomArticle = formField.get("name").toString();
		String description = formField.get("description").toString();
		Float prix = Float.parseFloat(formField.get("price").toString());
		Integer quantite = Integer.parseInt(formField.get("quantity").toString());
		String categorie = formField.get("categ").toString();
		String fileName = uploadedFile.get("name").toString();
		String filePath = uploadedFile.get("path").toString();
		
		if (isImageFile(fileName)) {
			ArrayList<String> list = new ArrayList<String>(Arrays.asList(nomArticle, description));
			if (!form.isBlankListString(list) && categList.contains(categorie)) {
				try {
					queries.addArticle(new Article(nomArticle, filePath, prix, description, quantite, categorie));
					returnedMsg = "L'article "+nomArticle+" a été enregistrer avec succés";
				} catch (Exception e) {
					// TODO: handle exception
					returnedMsg = "Erreur temporaire d'enregistrement de l'article "+nomArticle;
				}
			} else {
				returnedMsg = "Veullez reverifier les champs du formulaire et Réessayer";
			}
		} else {
			returnedMsg = "Veullez reverifier le fichier envoyer et Réessayez";
		}
		return returnedMsg;    	
    }
}
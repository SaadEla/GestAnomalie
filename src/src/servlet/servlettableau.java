package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bdd.inscriptionJDBC;
import bean.data;
import bean.utilisateur;
import form.connexionform;
import form.inscriptionform;


public class servlettableau extends HttpServlet {
    public static final String CHAMP1 = "commune";
    public static final String CHAMP2 = "responsable";
    public static final String VUE1 = "";
    public static final String VUE = "/restreint/tableau.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
    	String url = "jdbc:mysql://localhost:3306/LYDEC?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    	String utilisateur = "root";
    	String motDePasse = "";
    	Connection connexion = null;
    	Statement statement = null;

    	try {
    	    connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
    	    /* Création de l'objet gérant les requêtes */
    	    statement = connexion.createStatement();
    	   String aa=request.getParameter("aa");
    	   String bb=request.getParameter("bb");
    	   int cc=Integer.parseInt(request.getParameter("cc"));
    	   String dd=request.getParameter("dd");
    	   String ee=request.getParameter("ee");
    	   String ff=request.getParameter("ff");
    	   String gg=request.getParameter("gg");
    	   String hh=request.getParameter("hh");
    	   String ii=request.getParameter("ii");
    	   String jj=request.getParameter("jj");
    	   String kk=request.getParameter("kk");
    	   String ll=request.getParameter("ll");
    	   String mm=request.getParameter("mm");
    	   String nn=request.getParameter("nn");
    	   int oo=Integer.parseInt(request.getParameter("oo"));
    	   String pp=request.getParameter("pp");
    	   String qq=request.getParameter("qq");
    	   statement.executeUpdate("UPDATE data SET Date_rapport='"+aa+"',Non_conformite='"+bb+"',Annee ='"+cc+"',Entite='"+dd+"',Responsable_activite='"+ee+"',Projet='"+ff+"',Commune='"+gg+"',Metier='"+hh+"',Entreprise='"+ii+"',Essai1='"+jj+"',Essai2='"+kk+"',Essai3='"+ll+"',Essai4='"+mm+"',Date_reprise='"+nn+"',Delai="+oo+",Etat='"+pp+"',Remarque='"+qq+"' WHERE id=1");
            
        } catch ( Exception e ) {
                     e.getMessage() ;
        } finally {
        	
        	try {
				connexion.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
               
            }
        
            
           }

}
package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.data;
import form.ajouterform;

public class servletajouterdata extends HttpServlet {
    public static final String VUE1 = "";
    public static final String VUE = "/restreint/ajouter.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{

    	String url = "jdbc:mysql://localhost:3306/LYDEC?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    	String utilisateur = "root";
    	String motDePasse = "";
    	Connection connexion = null;
    	Statement statement=null;
        String Date_rapport = request.getParameter("date_rapport");
        String[] Non_conformite = request.getParameterValues("non_conformite");
        int Annee = Integer.parseInt(request.getParameter("annee") );
        String[] Entite = request.getParameterValues("entite");
        String[] Responsable_activite = request.getParameterValues("responsable_activite");
        String Projet = request.getParameter("projet") ;
        String Commune = request.getParameter("commune") ;
        String Metier = request.getParameter("metier") ;
        String Entreprise = request.getParameter("entreprise") ;
        String Essai1 = request.getParameter("essai1") ;
        String Essai2 = request.getParameter("essai2") ;
        String Essai3 = request.getParameter("essai3") ;
        String Essai4 = request.getParameter("essai4") ;
        String Date_reprise = request.getParameter("date_reprise") ;
        int Delai = Integer.parseInt(request.getParameter("delai") );
        String Etat = request.getParameter("etat") ;
        String Remarque = request.getParameter("remarque") ;
    	try {
    		
    	    connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
    	    /* Création de l'objet gérant les requêtes */
    	    statement = connexion.createStatement();
    	    statement.executeUpdate( "INSERT INTO data (Date_rapport,Non_conformite,Annee,Entite,Responsable_activite,Projet,Commune,Metier,Entreprise,Essai1,Essai2,Essai3,Essai4,Date_reprise,Delai,Etat,Remarque) "
                    + "VALUES ('" + Date_rapport + "', '" +Non_conformite[0]+ "', " +Annee+ ", '"+Entite[0]+"','"+Responsable_activite[0]+"','"+Projet+"','"+Commune+"','"+Metier+"','"+Entreprise+"','"+Essai1+"','"+Essai2+"','"+Essai3+"','"+Essai4+"','"+Date_reprise+"',"+Delai+",'"+Etat+"','"+Remarque+"')" );
    	} catch ( Exception e ) {
                 e.getMessage() ;
    } 
    	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );	
    }
    }
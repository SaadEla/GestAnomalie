package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bdd.inscriptionJDBC;
import bean.utilisateur;
import form.connexionform;
import form.inscriptionform;

public class servletinscription extends HttpServlet {
    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    public static final String VUE = "/WEB-INF/inscription.jsp";
    public static final String VU = "connexion";
    public static final String ATT_DONNEE = "donnee";
    public static final String ATT_DONNE = "donne";
    
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Préparation de l'objet formulaire */
        /* Enregistrement de la liste des messages dans l'objet requête */
        inscriptionform form = new inscriptionform();
        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        utilisateur utilisateur = form.inscrireUtilisateur( request );
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );
        switch(form.getResultat()) {
        case("Succès de l'inscription."):
           	inscriptionJDBC zd=new inscriptionJDBC();
    	    List<String> donne = zd.executerTests( request );
    	    request.setAttribute( ATT_DONNE, donne );
        	response.sendRedirect( VU );
            break;
        default:
        	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        	break;
        }
    }
}
package form;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import bean.data;

public final class ajouterform {
public data ajouter( HttpServletRequest request ) {
    String Date_rapport = request.getParameter("date_rapport");
    String[] Non_conformite = request.getParameterValues("non_conformite");
    String Annee = request.getParameter("annee") ;
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
    String Delai = request.getParameter("delai") ;
    String Etat = request.getParameter("etat") ;
    String Remarque = request.getParameter("remarque") ;
    data data= new data();
    return data;
}
}
    
    
    
    
    

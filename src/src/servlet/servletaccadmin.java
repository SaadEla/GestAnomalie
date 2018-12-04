package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.data;

public class servletaccadmin extends HttpServlet {
    public static final String CHAMP1 = "projet";
    public static final String CHAMP2 = "responsable_activite";
    public static final String CHAMP3 = "non_conformite";
    public static final String CHAMP4 = "entite";
    public static final String VUE = "/restreint/accadmin.jsp";
    public static final String VUE1 = "gestion";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
    	    String Projet = request.getParameter( CHAMP1 );
    	    String[] Responsable_activite = request.getParameterValues(CHAMP2);
    	    String[] Non_conformite = request.getParameterValues(CHAMP3);
    	    String[] Entite = request.getParameterValues(CHAMP4);
    	    data data = new data();
    	    HttpSession s = request.getSession();
    	    s.setAttribute("projet", Projet);
    	    s.setAttribute("responsable_activite",Responsable_activite[0] );
    	    s.setAttribute("non_conformite",Non_conformite[0] );
    	    s.setAttribute("entite",Entite[0] );
    	    response.sendRedirect( VUE1 );
    }
}
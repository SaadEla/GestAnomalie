package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class servletdemandeinscription extends HttpServlet {
    public static final String VUE = "/restreint/demandeinscr.jsp";
	
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

            /* Récupération des paramètres d'URL saisis par l'utilisateur */
            String paramEmail = request.getParameter( "email" );
            String paramMotDePasse = request.getParameter( "motdepasse" );
            String paramNom = request.getParameter( "nom" );
            String dtparamMotDePasse = request.getParameter( "date_inscription" );
            

            
            if ( paramEmail != null && paramMotDePasse != null && paramNom != null ) {
                /* Exécution d'une requête d'écriture */
               statement.executeUpdate( "INSERT INTO utilisateur (email, mot_de_passe, nom, date_inscription) "
                        + "VALUES ('" + paramEmail + "', '" + paramMotDePasse + "', '" + paramNom + "', '"+dtparamMotDePasse+"');" );
                statement.executeUpdate( "DELETE FROM inscription WHERE email = '"+paramEmail+"' ;");
                
            
            }
            
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
 /*       
        PrintWriter print = response.getWriter();
        print.println("tounkb");*/
            
           }

}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ca.uqam.inf3005.projet1.servlet;

import ca.uqam.inf3005.projet1.fichier.GestionFichier;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mohamed
 */
public class Commande extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String telephone = request.getParameter("telephone");
        String courriel = request.getParameter("courriel");
        String[] ingredients = request.getParameterValues("ingredients");

        String commandeStr = "<h3>Renseignements personnels</h3>"
                + " Nom :" + nom + "<br />"
                + " Téléphone :" + telephone + "<br />"
                + " Courriel :" + courriel + "<br />"
                + " "
                + " <h3>Ingredients</h3>";

        if (ingredients != null) {
            commandeStr += "<ul>";
            for (int i = 0; i < ingredients.length; i++) {
                commandeStr += "<li>" + ingredients[i] + "</li>";
            }
            commandeStr += "</ul>";
        }

        String contextPath = getServletContext().getRealPath(File.separator);

        GestionFichier.ecrireLigne(commandeStr, contextPath + "commande.txt");       
        
        RequestDispatcher rd=request.getRequestDispatcher("resultat.jsp?cmd="+commandeStr);  
        rd.forward(request, response);

    }
}

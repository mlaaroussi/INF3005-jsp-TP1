<%-- 
    Document   : commande.jsp
    Created on : 2015-02-27, 22:06:19
--%>

<%@page import="java.io.File"%>
<%@page import="ca.uqam.inf3005.projet1.fichier.GestionFichier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commander votre pizza</title>
    </head>
    <body class='resultat'>
        <div>
            <h1>La Commande a été enregistré</h1>        
            <%! String[] ingredients; %>
            <jsp:useBean id="commande" scope="page" class="ca.uqam.inf3005.projet1.bean.CommandeBean" />
            <jsp:setProperty name="commande" property="*" />

            <h3>Renseignements personnels</h3>
            Nom :<jsp:getProperty name="commande" property="nom" /><br /> 
            Téléphone :<jsp:getProperty name="commande" property="telephone" /><br />
            Courriel :<jsp:getProperty name="commande" property="courriel" /><br />
            <span class='resultat'>Adresse: </span><jsp:getProperty name="commande" property="adresse" /><br />

            <h3>Pizza</h3>

            <span>Taille pizza :</span><jsp:getProperty name="commande" property="taille" /><br />
            <h3>Ingredients</h3>
            <%
                ingredients = request.getParameterValues("ingredients");
                String sIingredients = "";
                if (ingredients != null) {
                    sIingredients += "<ul class='resultat'>";
                    for (int i = 0; i < ingredients.length; i++) {
                        sIingredients += "<li class='resultat'>" + ingredients[i] + "</li>";
                    }
                    sIingredients += "</ul>";
                    out.println(sIingredients);
                }

                String contextPath = getServletContext().getRealPath(File.separator);
                String commandeStr = "<h4> Commande:</h4> Nom:" + commande.getNom() + "</br> Téléphone:" + commande.getTelephone()
                        + "</br> Courriel:" + commande.getCourriel() + "</br> Adresse" + commande.getAdresse()
                        + "</br> Iingredients: " + sIingredients;

                GestionFichier.ecrireLigne(commandeStr, contextPath + "commande.txt");
            %>
            <a href="afficher.jsp"> Afficher les commandes</a>
        </div>

    </body>
</html>

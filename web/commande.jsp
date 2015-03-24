<%-- 
    Document   : commande.jsp
    Created on : 2015-02-27, 22:06:19
--%>

<%@page import="java.io.File"%>
<%@page import="ca.uqam.inf3005.projet1.fichier.GestionFichier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head >
        <link rel="stylesheet" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commander votre pizza</title>
    </head>

    <body>     
        <header> 

            <h1 id="msgLogo"> Commandez votre Pizza en ligne! </h1>

        </header>
        <div class="cssCommande" >
            <div>
                <h1>La Commande a été enregistrée</h1>        
                <%! String[] ingredients; %>
                <jsp:useBean id="commande" scope="page" class="ca.uqam.inf3005.projet1.bean.CommandeBean" />
                <jsp:setProperty name="commande" property="*" />

                <table class="tbl_cmd">
                    <tr>
                        <th>
                            Renseignements personnels
                        </th>
                    </tr>
                    <tr> 
                        <td>

                            Nom :<jsp:getProperty name="commande" property="nom" /><br /> 
                            Téléphone :<jsp:getProperty name="commande" property="telephone" /><br />
                            Courriel :<jsp:getProperty name="commande" property="courriel" /><br />
                            Adresse :<jsp:getProperty name="commande" property="adresse" /><br />

                        </td>
                    </tr>
                    <tr> 
                        <th>
                            Pizza
                        </th>
                    </tr>
                    <tr> 
                        <td>

                            Taille pizza :<jsp:getProperty name="commande" property="taille" /><br />
                            Genre :<jsp:getProperty name="commande" property="genre" /><br />

                        </td> 
                    </tr>
                    <tr> 
                        <th>
                    Ingredients
                    </th> 
                    </tr>
                    <tr> 
                        <td>
                            <%
                                ingredients = request.getParameterValues("ingredients");
                                String sIingredients = "";
                                if (ingredients != null) {
                                    sIingredients += "<ul >";
                                    for (int i = 0; i < ingredients.length; i++) {
                                        sIingredients += "<li>" + ingredients[i] + "</li>";
                                    }
                                    sIingredients += "</ul>";
                                    out.println(sIingredients);
                                }

                                String contextPath = getServletContext().getRealPath(File.separator);
                                String commandeStr = "<tr>"
                                        + "<td >" + commande.getNom() + "</td>"
                                        + "<td >" + commande.getTelephone() + "</td>"
                                        + "<td >" + commande.getCourriel() + "</td>"
                                        + "<td >" + commande.getAdresse() + "</td>"
                                        + "<td >" + commande.getTaille() + "</td>"
                                        + "<td >" + commande.getGenre() + "</td>"
                                        + "<td >" + sIingredients + "</td>"
                                        + "</tr>";
                                GestionFichier.ecrireLigne(commandeStr, contextPath + "commande.txt");
                            %>
                        </td> 
                    </tr>
                    <tr> 
                        <th>
                  Prix total:
                    </th>
                    </tr>
                    <tr> 
                        <td>
                            <jsp:getProperty name="commande" property="prix" />$<br /> 
                        </td>
                    </tr>
                </table>
                <div id="lien_cmd">
                    <a href="afficher.jsp"> Afficher les commandes</a>
                </div>

            </div>
        </div>
    </body>
</html>

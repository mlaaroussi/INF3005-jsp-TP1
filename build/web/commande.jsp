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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String[] ingredients; %>
        <jsp:useBean id="commande" scope="page" class="ca.uqam.inf3005.projet1.bean.CommandeBean" />
        <jsp:setProperty name="commande" property="*" />

        <h3>Renseignements personnels</h3>
        Nom :<jsp:getProperty name="commande" property="nom" /><br /> 
        Tel :<jsp:getProperty name="commande" property="telephone" /><br />
        Courriel :<jsp:getProperty name="commande" property="courriel" /><br />
        
        <h3>Ingredients</h3>
        <%
            ingredients = request.getParameterValues("ingredients");
        %>
        <ul>
            <%
                if (ingredients != null) {
                    for (int i = 0; i < ingredients.length; i++) {
            %>
            <li>
                <%
                        out.println(ingredients[i]);
                    }
                %> 
            </li>
        </ul>
        <%
            } else {
                out.println("Pas d'ingredients séléctionés");
            }
                
            String contextPath = getServletContext().getRealPath(File.separator); 
                                                
            GestionFichier.ecrireLigne("test",contextPath+"commande.txt");
                out.println(contextPath);
        %>



    </body>
</html>

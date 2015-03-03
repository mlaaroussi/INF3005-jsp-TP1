<%-- 
    Document   : afficher
    Created on : 2015-02-28, 13:23:21
--%>

<%@page import="java.io.File"%>
<%@page import="ca.uqam.inf3005.projet1.fichier.GestionFichier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Afficher commande</title>
    </head>
    <body>
        <h3>Liste des commandes:</h3>
          <%
            String contextPath = getServletContext().getRealPath(File.separator);

            out.println(GestionFichier.lire(contextPath + "commande.txt"));
        %>
    </body>
</html>

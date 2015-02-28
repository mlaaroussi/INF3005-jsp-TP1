<%-- 
    Document   : afficher
    Created on : 2015-02-28, 13:03:59
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
       
        
        <h1>La Commande a été enregistré</h1>
          <%
           out.print(request.getParameter("cmd"));
        %>
         <a href="afficher.jsp"> Afficher les commandes</a>
    </body>
</html>

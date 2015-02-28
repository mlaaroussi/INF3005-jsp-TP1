<%-- 
    Document   : accueil
    Created on : 2015-02-27, 20:41:23
    Author     : mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Commandez de Pizza App</title>
    </head>

    <body>
        <header> </header>
        <nav></nav>
        <section>
            <h1>Commande votre Pizza</h1>
            <form action="commande.jsp" method="get">
                <fieldset>
                    <legend>Choix de Pizza </legend>
                    <fieldset>
                        <legend>Tailles </legend>
                        <select name="taille">
                            <option value="petite" >petite</option>
                            <option value="moyenne" >moyenne</option>
                            <option value="large" >large</option>
                            <option value="xLarge">xLarge</option>
                        </select>
                    </fieldset>
                    <fieldset>
                        <legend>Genres Pizza </legend>
                        <select name="genre">
                            <option value="vegetarienne">Vegetarienne</option>
                            <option value="fruitsDeMer">Fruits De Mer</option>
                            <option value="margherita">Margherita</option>
                            <option value="sicilienne">Sicilienne</option>
                            <option value="quatreSaison">Quatre saison</option>
                        </select>
                    </fieldset>
                    <fieldset>
                        <legend>Choix ingredients</legend>
                        <input type="checkbox" name="ingredients" value="roquette" />Roquette<br />
                        <input type="checkbox" name="ingredients" value="asperges" />Asperges<br />
                        <input type="checkbox" name="ingredients" value="olivesNoires" />Olives Noires<br /> 
                        <input type="checkbox" name="ingredients"value="brocoli" />brocoli <br /> 
                        <input type="checkbox" name="ingredients" value="cipolline" />cipolline<br /> 
                        <input 	type="checkbox" name="ingredients" value="champignonsFrais" />champignons frais<br />
                    </fieldset>
                </fieldset>
                <fieldset>
                    <legend>Informations personnelles</legend>
                    <ul>
                        <li><label for="name">Nom :</label> <input type="text"
                                                                   id="nomE" name="nom" minlength="2" required="true">
                            <p id="nomIncorrect"></p></li>
                     
                        <li><label for="email">Courriel :</label> <input type="email"
                                                                         id="courriel" name="courriel" required="true">
                            <p id="emailIncorrect"></p></li>
                        <li><label for="name">Téléphone :</label> <input type="text"
                                                                         id="tel" name="telephone" required="true">
                            <p id="telIncorrect"></p></li>
                        <li><label for="name">Adresse :</label> <input
                                type="text" id="adresse" name="adresse" minlength="2" >
                            <p id="codeIncorrect"></p></li>
                       
                        <li><input type="submit" value="Submit"></li>
                    </ul>
                </fieldset>

            </form>

        </section>
    </body>
    <footer> </footer>

</html>

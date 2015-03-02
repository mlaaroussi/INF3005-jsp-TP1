<%-- 
    Document   : accueil
    Created on : 2015-02-27, 20:41:23
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ca.uqam.inf3005.projet1.servlet.Commande"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <title>Commandez de Pizza App</title>
    </head>

    <body>
        <header> 
            <img src="img/logo.jpg">
            <h1 id="msgLogo">Commande votre Pizza en ligne</h1>
            
        </header>
        <nav>
            <img src="img/slide_1.jpg">
            <div class = "taillePizza" id="divPetit"><a href="" id="petite" value="petite" onclick="obtenirTaille();">Pizza Petite <span>10<sup>99</sup></span></a></div><br />
            <div class = "taillePizza"  id="divMoyen"><a href="" id="moyen" value="moyen" onclick="obtenirTaille();">Pizza Moyen <span>13<sup>99</sup></a></div><br />
            <div class = "taillePizza" id="divLarge"><a href="" id="large" value="large" onclick="obtenirTaille();">Pizza Large <span>16<sup>99</sup></a></div><br />
            <div class = "taillePizza" id="divXlarge"><a href="" id="xLargee" value="xLargee" onclick="obtenirTaille();">Pizza xLargee <span>19<sup>99</sup></a></div><br />
        </nav>
            
        <section>
           
            <form id="formulaire" name="formulaire" action="Commande" method="Post">
                <div id="choixPizza">
                    <fieldset >
                       <!--<legend>Choix de Pizza </legend>
                        <fieldset>
                            <legend>Tailles </legend>
                            <select name="taille">
                                <option value="petite" >petite</option>
                                <option value="moyenne" >moyenne</option>
                                <option value="large" >large</option>
                                <option value="xLarge">xLarge</option>
                            </select>
                        </fieldset> !-->
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
                </div>
                <div>
                    <fieldset id="infoPerso">
                        <legend>Informations personnelles</legend>
                        <ul>
                            <li><label for="name">Nom :</label>
                                <input type="text" id="nomE" name="nom" minlength="2" required="true">
                                <p id="nomIncorrect"></p>
                            </li>

                            <li>
                                <label for="email">Courriel :</label> 
                                <input type="email" id="courriel" name="courriel" required="true">
                                <p id="emailIncorrect"></p></li>
                            <li>
                                <label for="telephone">Téléphone :</label>
                                <input type="number" id="tel" name="telephone" required="true">
                                <p id="telIncorrect"></p>
                            </li>
                            <li>
                                <label for="adresse">Adresse :</label> 
                                <!--<input type="text" id="adresse" name="adresse" >!-->
                                <textarea type="text" id="adresse" name="adresse" ></textarea>
                                <p id="codeIncorrect"></p>
                            </li>
                        </ul>
                    </fieldset> 
                </div>

                <input type="submit" value="Submit">
            </form>

        </section>
    </body>
    <footer> </footer>

</html>

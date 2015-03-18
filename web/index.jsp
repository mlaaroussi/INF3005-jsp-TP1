<%-- 
    Document   : accueil
    Created on : 2015-02-27, 20:41:23
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <script src="js/javascript.js" type="text/javascript"></script> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
        <title>Commandez de Pizza App</title>
    </head>

    <body>
        <header> 

            <h1 id="msgLogo">Commande votre Pizza en ligne</h1>
        </header>
        <nav>

        </nav>
        <section id="formulaire">
            <form action="commande.jsp" method="Post">

                <div id="divCommande">
                    <div id="divGenres">
                        <fieldset>
                            <legend>Taille Pizza</legend>
                            <ul>
                                <li>
                                    <input type="radio" id="petite" name="taille" value="Petite"  required onchange = "taillePizza(this)"/>
                                    <label for="petite">Pizza Petite<span id ="prixP">10<sup>99</sup></span></label>
                                </li>
                                <br />
                                <li>
                                    <input type="radio" id="moyen" name="taille" value="Moyenne" onchange = "taillePizza(this)"/>
                                    <label for="moyen">Pizza Moyenne<span id ="prixM">13<sup>99</sup></span></label>
                                </li>
                                <br />
                                <li>
                                    <input type="radio" id="large" name="taille" value="Large" onchange = "taillePizza(this)"/>
                                    <label for="large">Pizza Large<span id ="prixL">16<sup>99</sup></span></label>
                                </li>
                                <br />
                                <li>
                                    <input type="radio" id="xLargee" name="taille" value="xLargee" onchange = "taillePizza(this)"/>
                                    <label for="xLargee">Pizza xLargee<span id ="prixXl">19<sup>99</sup></span></label>
                                </li>
                            </ul>
                        </fieldset>  
                        <fieldset>
                            <legend>Genres Pizza </legend>
                            <ul>
                                <li>
                                    <input type="radio" id="pepperoni" name="genre" value="Pepperoni" required onchange="genrePizza(this)"/>
                                    <label for="rb5">Pepperoni<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="fruits" name="genre" value="Fruits De Mer" required  onchange="genrePizza(this)"/>
                                    <label for="rb8">Fruits de mer<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="viande" name="genre" value="Viande Fumee" required onchange="genrePizza(this)"/>
                                    <label for="rb11">Viande Fumee<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="vegi" name="genre" value="Végétarienne" required onchange="genrePizza(this)"/>
                                    <label for="rb12">Végétarienne<span id ="prix"></span></label>
                                </li>
                            </ul>
                        </fieldset>  
                    </div>
                    <div id="divIngredients"> 
                        <h3>Ingredients de votre choix</h3>
                        <div class ="divGroupeIngredients">
                            <fieldset>
                                <legend>Sauce</legend>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="cb1" name="ingredients" value="Extra Sauce"  onchange="compter(this)"/>
                                        <label for="cb1">Extra Sauce</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb2" name="ingredients" value="Sauce BBQ" onchange="compter(this)"/>
                                        <label for="cb2">Sauce BBQ</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb3" name="ingredients" value="Poivre De Chili" onchange="compter(this)"/>
                                        <label for="cb3">Poivre de Chili</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb4"  name="ingredients" value="Ail" onchange="compter(this)"/>
                                        <label for="cb4">Ail</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb5" name="ingredients"value="Moins DeSauce" onchange="compter(this)"/>
                                        <label for="cb5">Moins de Sauce</label>
                                    </li>
                                </ul>

                            </fieldset>
                        </div>

                        <div class ="divGroupeIngredients">
                            <fieldset>
                                <legend>Légume</legend>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="cb7" name="ingredients" value="Olives Vertes" onchange="compter(this)"/>
                                        <label for="cb7">Olives vertes</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb8" name="ingredients" value="Olives Kalamata" onchange="compter(this)"/>
                                        <label for="cb8">Olives Kalamata</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb9" name="ingredients" value="Asperges" onchange="compter(this)"/>
                                        <label for="cb9">Asperges</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb10"  name="ingredients" value="Champignons" onchange="compter(this)"/>
                                        <label for="cb10"> Champignons</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb11" name="ingredients"value="Brocoli" onchange="compter(this)"/>
                                        <label for="cb11">Brocoli</label>
                                    </li>
                                </ul>
                            </fieldset>
                        </div>
                        <div class ="divGroupeIngredients">
                            <fieldset>
                                <legend>Fromage</legend>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="cb14" name="ingredients" value="Parmesan" onchange="compter(this)"/>
                                        <label for="cb14">Parmesan</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb15" name="ingredients" value="Fromagefeta" onchange="compter(this)"/>
                                        <label for="cb15">Fromage féta</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb16" name="ingredients" value="Extra Fromage" onchange="compter(this)"/>
                                        <label for="cb16">Extra Fromage</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb17"  name="ingredients" value="Moins De Fromage" onchange="compter(this)"/>
                                        <label for="cb17">Moins de Fromage</label>
                                    </li>
                                    <br />



                                </ul>
                            </fieldset>
                        </div>
                        <div class ="divGroupeIngredients">
                            <fieldset>
                                <legend>Viandes</legend>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="cb21" name="ingredients" value="Boeuf" onchange = "compter(this)"/>
                                        <label for="cb21">Boeuf</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb22" name="ingredients" value="Poulet" onchange = "compter(this)"/>
                                        <label for="cb22">Poulet</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb23" name="ingredients" value="Fruits de Mer" onchange = "compter(this)"/>
                                        <label for="cb23">Fruits de Mer</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb24"  name="ingredients" value="Bacon" onchange = "compter(this)"/>
                                        <label for="cb24">Bacon</label>
                                    </li>
                                    <br />                                
                                </ul>
                            </fieldset>
                        </div>
                    </div>

                    <fieldset id="infoPerso">
                        <legend>Informations personnelles</legend>
                        <ul>
                            <li><label for="name">Nom :</label>
                                <input type="text" id="nomE" name="nom" minlength="2" required="true">

                            </li>

                            <li>
                                <label for="email">Courriel :</label> 
                                <input type="email" id="courriel" name="courriel" required="true">
                            </li>        
                            <li>
                                <label for="telephone">Téléphone :</label>
                                <input type="number" id="tel" name="telephone" required="true">

                            </li>
                            <li>
                                <label for="adresse">Adresse :</label> 
                                <textarea type="text" id="adresse" name="adresse" required="true"></textarea>
                            </li>
                            <li>
                                <input type="hidden" id= "prix" name="prix" value="10.99">
                                <input type="submit" value="Commander">
                                <input type="reset" value="Réinitialiser" onclick="reinitialiser();">
                            </li>
                        </ul>
                    </fieldset> 
                    <fieldset id="infoCommande">
                        <legend>Commande :</legend>
                        <h4 id='choixPizza'></h4> 
                        <h5 id="genrePizza"></h5>
                        <h4 id='listIngredients'></h4>
                        <ul id="choixIngredients">
                            
                        </ul>     
                        <span id="prixCommande"></span>
                    </fieldset> 
                </div>
            </form>
        </section>
    </body>
</html>

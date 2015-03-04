<%-- 
    Document   : accueil
    Created on : 2015-02-27, 20:41:23
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="js/javascript.js" type="text/javascript"></script> 
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
            <div class = "taillePizza" id="divPetit"><a href="" id="petite" data-taille="petite" onclick="obtenirTaille(this);">Pizza Petite <span>10<sup>99</sup></span></a></div><br />
            <div class = "taillePizza"  id="divMoyen"><a href="" id="moyen" data-taille="moyenne" onclick="obtenirTaille(this);">Pizza Moyenne <span>13<sup>99</sup></a></div><br />
            <div class = "taillePizza" id="divLarge"><a href="" id="large" data-taille="large"  onclick="obtenirTaille(this);">Pizza Large <span>16<sup>99</sup></a></div><br />
            <div class = "taillePizza" id="divXlarge"><a href="" id="xLargee" data-taille="xLargee"  onclick="obtenirTaille(this);">Pizza xLargee <span>19<sup>99</sup></a></div><br />
        </nav>

        <section id="formulaire">

            <form action="commande.jsp" method="Post">
                <select id="taille" name="taille">
                    <option value="petite" selected >petite</option>
                    <option value="moyenne" >moyenne</option>
                    <option value="large" >large</option>
                    <option value="xLarge">xLarge</option>
                </select>
                <div id="divCommande">
                     <img id="close" src="img/close.jpg">
                    <div id="divVotreChoix">
                        <fieldset>
                            <legend>Votre choix</legend>

                        </fieldset>
                    </div>
                    <div id="divGenres">
                        <fieldset>
                            <legend>Genres Pizza </legend>
                            <ul>
                                <li>
                                    <input type="radio" id="rb1" name="genre" value="touteGarnie"  />
                                    <label for="rb1">Toute garnie<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb2" name="genre" value="Halal" />
                                    <label for="rb2">Halal<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb3" name="genre" value="Nature" />
                                    <label for="rb3">Nature<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb4" name="genre" value="margherita" />
                                    <label for="rb4">Margherita<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb5" name="genre"value="Pepperoni" />
                                    <label for="rb5">Pepperoni<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb6" name="genre" value="Hawaïenne" />
                                    <label for="rb6">Hawaïenne<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb7" name="genre" value="Mexicaine" />
                                    <label for="rb7">Mexicaine<span id ="prix"></span></label>

                                </li>
                                <li>
                                    <input type="radio" id="rb8" name="genre" value="fruitsDeMer" />
                                    <label for="rb8">Fruits de mer<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb9" name="genre" value="margherita" />
                                    <label for="rb9">Margherita<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb10" name="genre"value="quatreSaison" />
                                    <label for="rb10">Quatre saison<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb11" name="genre" value="viandeFumee" />
                                    <label for="rb11">Viande Fumee<span id ="prix"></span></label>
                                </li>
                                <li>
                                    <input type="radio" id="rb12" name="genre" value="Végétarienne" />
                                    <label for="rb12">Végétarienne<span id ="prix"></span></label>
                                </li>
                            </ul>


                        </fieldset>  
                    </div>
                    <div id="divIngredients"> 
                        <h2>Garniture de votre choix</h2>
                        <div class ="divGroupeIngredients">
                            <fieldset>
                                <legend>Sans Frais</legend>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="cb1" name="ingredients" value="extraSauce" />
                                        <label for="cb1">Extra Sauce</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb2" name="ingredients" value="sauceBBQ" />
                                        <label for="cb2">Sauce BBQ</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb3" name="ingredients" value="poivreDeChili" />
                                        <label for="cb3">Poivre de Chili</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb4"  name="ingredients" value="ail" />
                                        <label for="cb4">Ail</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb5" name="ingredients"value="moinsDeSauce" />
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
                                        <input type="checkbox" id="cb7" name="ingredients" value="olivesVertes" />
                                        <label for="cb7">Olives vertes</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb8" name="ingredients" value="olivesKalamata" />
                                        <label for="cb8">Olives Kalamata</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb9" name="ingredients" value="asperges" />
                                        <label for="cb9">Asperges</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb10"  name="ingredients" value="Champignons" />
                                        <label for="cb10"> Champignons</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb11" name="ingredients"value="brocoli" />
                                        <label for="cb11">brocoli</label>
                                    </li>
                                </ul>
                            </fieldset>
                        </div>
                        <div class ="divGroupeIngredients">
                            <fieldset>
                                <legend>Laitier</legend>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="cb14" name="ingredients" value="parmesan" />
                                        <label for="cb14">Parmesan</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb15" name="ingredients" value="fromagefeta" />
                                        <label for="cb15">Fromage féta</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb16" name="ingredients" value="extraFromage" />
                                        <label for="cb16">Extra Fromage</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb17"  name="ingredients" value="MoinsDeFromage" />
                                        <label for="cb17">Moins de Fromage</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb18" name="ingredients"value="brocoli" />
                                        <label for="cb18">brocoli</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb19" name="ingredients" value="cipolline" />
                                        <label for="cb19">cipolline</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb20" name="ingredients" value="doublePizzaBlend" />
                                        <label for="cb20">Double Pizza Blend</label>
                                    </li>

                                </ul>
                            </fieldset>
                        </div>
                        <div class ="divGroupeIngredients">
                            <fieldset>
                                <legend>Viandes</legend>
                                <ul>
                                    <li>
                                        <input type="checkbox" id="cb21" name="ingredients" value="roquette" />
                                        <label for="cb21">Roquette</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb22" name="ingredients" value="asperges" />
                                        <label for="cb22">Asperges</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb23" name="ingredients" value="asperges" />
                                        <label for="cb23">Asperges</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb24"  name="ingredients" value="olivesNoires" />
                                        <label for="cb24"> Olives Noirs</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb25" name="ingredients"value="brocoli" />
                                        <label for="cb25">brocoli</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb26" name="ingredients" value="cipolline" />
                                        <label for="cb26">cipolline</label>
                                    </li>
                                    <br />
                                    <li>
                                        <input type="checkbox" id="cb27" name="ingredients" value="champignonsFrais" />
                                        <label for="cb27">Champignons Frais</label>
                                    </li>

                                </ul>
                            </fieldset>
                        </div>
                    </div>

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
                            <li>
                                <input type="submit" value="Commander">
                                <input type="submit" value="Annuler">
                            </li>
                        </ul>
                    </fieldset> 
                </div>
            </form>
        </section>
    </body>
    <footer> </footer>

</html>

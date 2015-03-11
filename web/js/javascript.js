/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* global count */

//function obtenirTaille(choix) {
//    var tailleChoix = choix.getAttribute("data-taille");
//    $('#taille option[value=tailleChoix]').attr('selected', 'selected');
//    document.getElementById("taille").value = tailleChoix;
//}
//
//$(document).ready(function () {
//    $(".taillePizza").click(function () {
//        $("#divCommande").css("display", "block");
//    });
//});
//
//$(document).ready(function () {
//    $("#close").click(function () {
//        $("#divCommande").css("display", "none");
//    });
//});
var count = 0;
function compter(selection) {
    if (selection.checked) {
        count += 1;
        if (count === 1) {
            document.getElementById("choixIngredients").innerHTML += "<h4> Ingredients</h4>" +  selection.value;
        } else {
            document.getElementById("choixIngredients").innerHTML +=  "<br />" + selection.value;
        }

    }
    if (count > 5) {
        alert("Maximum de 5 garnitures autorisees");
    }
}

function taillePizza(choix) {
    document.getElementById("choixPizza").innerHTML = "Pizza " + choix.value;
    if(choix.value === "petite"){
        document.getElementById("prix").value = 10.99;
        document.getElementById("prixCommande").innerHTML +=  "<br /> Prix :" + 10.99;
    }else if(choix.value === "moyenne"){
        document.getElementById("prix").value = 13.99;
        document.getElementById("prixCommande").innerHTML +=  "<br /> Prix :" + 13.99;
    }else if (choix.value === "large"){
        document.getElementById("prix").value = 16.99;
        document.getElementById("prixCommande").innerHTML +=  "<br /> Prix :"+ 16.99;
    }else{
        document.getElementById("prix").value = 19.99;
        document.getElementById("prixCommande").innerHTML =  "<br /> Prix :" + 19.99;
    }
}

function reinitialiser(){
    document.getElementById("choixPizza").innerHTML = "";
    document.getElementById("prixCommande").innerHTML = "";
    document.getElementById("prixCommande").innerHTML = "";
    document.getElementById("prixCommande").innerHTML = "";
    document.getElementById("prixCommande").innerHTML = "";
    document.getElementById("choixIngredients").innerHTML = "";
    document.getElementById("choixIngredients").innerHTML = "";
    count = 0;
}
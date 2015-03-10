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
}
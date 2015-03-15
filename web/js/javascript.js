/* 
 * TP 1 INF3005
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* global count */


var count = 0;
function compter(selection) {
    if (selection.checked) {
        count += 1;
        if (count === 1) {
            document.getElementById("listIngredients").innerHTML = "Ingredients";
            $("#choixIngredients").append("<li>" + selection.value + "</li>");
        } else if (count <= 5) {
            $("#choixIngredients").append("<li>" + selection.value + "</li>");
        } else if (count === 6) {
            alert("un maximum de 5 choix !");
            $(selection).attr("checked", false);
            count = 5;
        }
    } else if (!selection.checked) {
        count -= 1;
        if (count === 0) {
            document.getElementById("listIngredients").innerHTML = "";
            $("#choixIngredients li").each(function () {
                if ($(this).text() === selection.value) {
                    this.remove();
                }
            });
        } else {
            $("#choixIngredients li").each(function () {
                if ($(this).text() === selection.value) {
                    this.remove();
                }
            });
        }
    }
}

function taillePizza(choix) {
    document.getElementById("choixPizza").innerHTML = "Pizza " + choix.value;
     document.getElementById("prixCommande").innerHTML = "";
    if (choix.value === "Petite") {
        document.getElementById("prix").value = 10.99;
        document.getElementById("prixCommande").innerHTML += "<br /> Prix :" + 10.99;
    } else if (choix.value === "Moyenne") {
        document.getElementById("prix").value = 13.99;
        document.getElementById("prixCommande").innerHTML += "<br /> Prix :" + 13.99;
    } else if (choix.value === "Large") {
        document.getElementById("prix").value = 16.99;
        document.getElementById("prixCommande").innerHTML += "<br /> Prix :" + 16.99;
    } else {
        document.getElementById("prix").value = 19.99;
        document.getElementById("prixCommande").innerHTML = "<br /> Prix :" + 19.99;
    }
}

function genrePizza(choix) {
    document.getElementById("genrePizza").innerHTML = "Pizza " + choix.value;
}
function reinitialiser() {
    document.getElementById("choixPizza").innerHTML = "";
    document.getElementById("prixCommande").innerHTML = "";
    document.getElementById("prixCommande").innerHTML = "";
    document.getElementById("prixCommande").innerHTML = "";
    document.getElementById("prixCommande").innerHTML = "";
    document.getElementById("choixIngredients").innerHTML = "";
    document.getElementById("choixIngredients").innerHTML = "";
    count = 0;
}
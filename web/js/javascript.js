/*  Cours INF3005 TP 1
    Created on : Feb 28, 2015, 9:49:07 PM
    Mohamed LAAROUSSI, LAAM03038304
    Nabil Harzallah, HARM13037400
    Nizar Semlali, SEMN14019103
*/

var count = 0;
function compter(selection) {
    if (selection.checked) {
        count += 1;
        if (count === 1) {
            $("#listIngredients").html("Ingredients");
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
            $("#listIngredients").html("");
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
    $("#choixPizza").html("Pizza " + choix.value);
    $("#prixCommande").html("");

    if (choix.value === "Petite") {
        $("#prix").val(10.99);
        $("#prixCommande").html("<br /> Prix :" + 10.99);
    } else if (choix.value === "Moyenne") {
        $("#prix").val(13.99);
        $("#prixCommande").html("<br /> Prix :" + 13.99);
    } else if (choix.value === "Large") {
        $("#prix").val(16.99);
        $("#prixCommande").html("<br /> Prix :" + 16.99);

    } else {
        $("#prix").val(19.99);
        $("#prixCommande").html("<br /> Prix :" + 19.99);
    }
}

function genrePizza(choix) {
    $("#genrePizza").html("Pizza " + choix.value);
}
function reinitialiser() {
    $("#choixPizza").html("");
    $("#genrePizza").html("");
    $("#listIngredients").html("");
    $("#prixCommande").html("");
    $("#choixIngredients").html("");
    count = 0;
}
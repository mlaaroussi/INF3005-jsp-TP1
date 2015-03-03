/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function obtenirTaille(choix) {
    var tailleChoix = choix.getAttribute("data-taille");
    $('#taille option[value=tailleChoix]').attr('selected', 'selected');
    document.getElementById("taille").value = tailleChoix;
    alert(document.getElementById("taille").value);

}


$(document).ready(function () {
    $("#msgLogo").html("test jquery fonctionnne");
});
 
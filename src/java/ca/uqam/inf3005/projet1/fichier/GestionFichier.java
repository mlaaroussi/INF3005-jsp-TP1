/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ca.uqam.inf3005.projet1.fichier;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class GestionFichier {

    public static void ecrireLigne(String donnees, String chemin) throws IOException {
        FileWriter fw = new FileWriter(new File(chemin), true);
        BufferedWriter bw = new BufferedWriter(fw);
        bw.write(donnees + "\n");
        bw.close();
    }

    public static String lire(String chemin) throws FileNotFoundException, IOException {

        BufferedReader buff = new BufferedReader(new FileReader(chemin));
        String ligne;
        String rslt = "";

        while ((ligne = buff.readLine()) != null) {
            rslt += ligne;
        }

        return rslt;
    }
}

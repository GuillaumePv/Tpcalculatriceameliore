//
//  main.swift
//  TPMiniCalculatriceAmeliore
//
//  Created by PAVÉ Guillaume on 30/09/2019.
//  Copyright © 2019 PAVÉ Guillaume. All rights reserved.
//

import Foundation

func calculatrice(){
    func input() -> Int {
        let strData = readLine();
        
        return Int(strData!)!
    }
    func carre(nombre:Int)-> Int{
        return nombre*nombre
    }
    var operateur: Int
    var nombre1: Int
    var nombre2: Int
    var resultat: Int
    var nouveau : Int
    var i: Int = 0
    
    repeat{
        print("-- Menu --")
        print("1. Addition")
        print("2. Soustraction")
        print("3. Multiplication")
        print("4. Division")
        print("5. Modulo")
        print("6. Carré du nombre")
        
        // demander à l'utilisateur ce qu'il souhaite faire
        print("Que voulez vous ? (de 1 à 6) ")
        operateur = input()
        
        // pour pouvoir faire l'opération, il faut s'assurer que le nombre rentré fait bien parti du menu
        if (operateur >= 1 && operateur <= 6){
            // utilisateur rentre le premier nombre
            print("Entrez le premier nombre : ")
            nombre1 = input()
            if(operateur != 6){
                print("Entrez le deuxième nombre : ")//l'utilisateur rentre le 2e nombre
                nombre2 = input()
            }
            else{
                nombre2 = nombre1
            }
            
            
            switch operateur{
            case 1: // addition
                resultat = nombre1 + nombre2
            case 2: // soustraction
                resultat = nombre1 - nombre2
            case 3: // multiplication
                resultat = nombre1 * nombre2
            case 4: // division
                resultat = nombre1 / nombre2
            case 5: // modulo
                resultat = nombre1 % nombre2
            case 6: //carré
                resultat = nombre1 * nombre1
            default:
                resultat = 0
                print("ERROR")
            }
            // affichage du résultat
            print("Le résultat de l'opération est : \(resultat)")
            i = i + 1
        }
        
        print("Envie de faire un Nouveau Calcul : oui (1), non(2)")
        nouveau = input()
        
    }while operateur < 1 || operateur > 6 || nouveau == 1
    print("l'utilisateur a fait \(i) opérations")
    
}

calculatrice()


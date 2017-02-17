/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ando.mira.fevrandrana.metier;

import ando.mira.fevrandrana.entite.Utilisateur;

/**
 *
 * @author User
 */
public class Fonction {
     Utilisateur u=new Utilisateur();
     
     public int getIdUser()
     {
         int id=0;
         id=u.getIdUtilisateur("fara.randria@outlook.fr");
         return id;
     }
     
   public String getImgUtilisateur(int id)
   {
       String val=u.getImgUtilisateur(id);
       return val;
   }
   
   public void insertUser(String nom, String prenom, String email, String mdp, String img)
   {
       u.insertNewUtilisateur(nom, prenom, email, mdp, img);
   }
   
    public int getNombreDePublications(int id)
    {
        u.setIduser(id);
        int val=u.getNombreDePublications();
        return val;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ando.mira.fevrandrana.metier;

import ando.mira.fevrandrana.database.BasicsFunctions;
import ando.mira.fevrandrana.database.DBConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author User
 */
public class FonctionTest {
    
    public FonctionTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getIdUser method, of class Fonction.
     */
    @org.junit.Test
    public void testGetIdUser() {
        System.out.println("getIdUser");
        Fonction instance = new Fonction();
        int expResult = 1;
        int result = instance.getIdUser();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getImgUtilisateur method, of class Fonction.
     */
    @org.junit.Test
    public void testGetImgUtilisateur() {
        System.out.println("getImgUtilisateur");
        int id = 1;
        Fonction instance = new Fonction();
        String expResult = "fara.jpg";
        String result = instance.getImgUtilisateur(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of insertUser method, of class Fonction.
     */
    @org.junit.Test
    public void testInsertUser() {
        System.out.println("insertUser");
        String nom = "rak";
        String prenom = "onitiana";
        String email = "onitiana@gmail.com";
        String mdp = "ony";
        String img = "ony.jpg";
        Fonction instance = new Fonction();
        instance.insertUser(nom, prenom, email, mdp, img);
        int expResult =7;
        int result =0 ;
        String query = "SELECT count(*) as nbuser FROM utilisateur";
        try {
            DBConnect dbc = new DBConnect();
            Connection c = dbc.getconn();
            Statement st=c.createStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                result=rs.getInt("nbuser");
            }
            }
         catch (SQLException ex) {
        }
         assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getNombreDePublications method, of class Fonction.
     */
    @org.junit.Test
    public void testGetNombreDePublications() {
        System.out.println("getNombreDePublications");
        int id = 1;
        Fonction instance = new Fonction();
        int expResult = 12;
        int result = instance.getNombreDePublications(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       // fail("The test case is a prototype.");
    }
    
}

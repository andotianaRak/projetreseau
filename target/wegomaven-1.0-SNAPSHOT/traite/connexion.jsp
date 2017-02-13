<%@page import="java.sql.Time"%>
<%@page import="java.sql.Date"%>
<%@page import="ando.mira.fevrandrana.metier.GestionDate"%>
<%@page import="ando.mira.fevrandrana.entite.ConnexionDeconnexion"%>
<%@page import="ando.mira.fevrandrana.entite.Utilisateur"%>
<%@page import="ando.mira.fevrandrana.metier.Connexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = request.getParameter("mail");
    String pass = request.getParameter("pass");
    Connexion c = new Connexion(email, pass);
    if (c.connected() == true) {
        session.setMaxInactiveInterval(3600);
        session.setAttribute("id_user", email);
        Utilisateur utili = new Utilisateur();
        utili.setEmailuser(email);
        utili.getUtilisateur();

        GestionDate gd = new GestionDate();
        Date date = gd.getDateAuj();
        Time he = gd.getHeureAuj();

        ConnexionDeconnexion cd = new ConnexionDeconnexion();
        cd.setDateconnexion(date);
        cd.setHeureconnexion(he);   
        cd.setIduser(utili.getIduser());
        
        cd.insertCoDe();
        
        out.print("az");
    }
%>



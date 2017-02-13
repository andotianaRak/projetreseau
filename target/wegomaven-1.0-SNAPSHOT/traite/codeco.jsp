<%@page import="ando.mira.fevrandrana.entite.ConnexionDeconnexion"%>
<%@page import="java.sql.Time"%>
<%@page import="java.sql.Date"%>
<%@page import="ando.mira.fevrandrana.metier.GestionDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    GestionDate gd = new GestionDate();
    Date date = gd.getDateAuj();
    Time he = gd.getHeureAuj();

    ConnexionDeconnexion cd = new ConnexionDeconnexion();
    cd.setDateconnexion(date);
    cd.setHeureconnexion(he);
    cd.setIduser(Integer.parseInt(request.getParameter("iduser")));

    cd.insertCoDe();
%>

<%@page import="java.sql.Time"%>
<%@page import="java.sql.Date"%>
<%@page import="ando.mira.fevrandrana.metier.GestionDate"%>
<%@page import="ando.mira.fevrandrana.entite.DemandeAbonnement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.addHeader("Access-Control-Allow-Origin", "*");
    String demandeur = request.getParameter("idmoi");
    String demander = request.getParameter("idlui");
    
    GestionDate gd = new GestionDate();
    Date date = gd.getDateAuj();
    Time he = gd.getHeureAuj();
    
    DemandeAbonnement da = new DemandeAbonnement();
    da.setIduserdemander(Integer.parseInt(demander));
    da.setIduserdemandeur(Integer.parseInt(demandeur));
    da.setDate(date);
    da.setHeure(he);
    da.insertDemande();
    out.print("Ok");
%>
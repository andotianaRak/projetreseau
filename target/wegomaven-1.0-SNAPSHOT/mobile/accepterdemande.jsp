<%-- 
    Document   : accepterdemande
    Created on : 6 févr. 2017, 15:15:35
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ando.mira.fevrandrana.metier.GestionDate"%>
<%@page import="java.sql.Time"%>
<%@page import="java.sql.Date"%>
<%@page import="ando.mira.fevrandrana.entite.Abonnes"%>
<%@page import="ando.mira.fevrandrana.entite.DemandeAbonnement"%>
<%
     response.addHeader("Access-Control-Allow-Origin", "*");
    String demandeur = request.getParameter("idabonne");
    String demander = request.getParameter("idu");
    
    GestionDate gd = new GestionDate();
    
    Date da = gd.getDateAuj();
    Time he = gd.getHeureAuj();
    Abonnes a = new Abonnes();
    a.setIduserabonnant(Integer.parseInt(demandeur));
    a.setIduserabonne(Integer.parseInt(demander));
    a.setDateaccepation(da);
    a.setHeureacceptation(he);
    a.insertAbonnes();
    
%>

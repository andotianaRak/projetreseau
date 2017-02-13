<%@page import="ando.mira.fevrandrana.entite.Abonnes"%>
<%@page import="ando.mira.fevrandrana.entite.DemandeAbonnement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String demandeur = request.getParameter("idmoi");
    String demander = request.getParameter("idlui");
    DemandeAbonnement da = new DemandeAbonnement();
    da.setIduserdemander(Integer.parseInt(demander));
    da.setIduserdemandeur(Integer.parseInt(demandeur));
    da.rollbackDemande();
    Abonnes a = new Abonnes();
    a.setIduserabonnant(Integer.parseInt(demandeur));
    a.setIduserabonne(Integer.parseInt(demander));
    a.rollbackAbonnement();
    out.print("Ok");
%>
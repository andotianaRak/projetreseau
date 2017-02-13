<%-- 
    Document   : partagerpub
    Created on : 7 févr. 2017, 10:24:26
    Author     : User
--%>
<%@page import="ando.mira.fevrandrana.entite.Utilisateur"%>
<%@page import="ando.mira.fevrandrana.database.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="ando.mira.fevrandrana.metier.Publier"%>
<%@page import="ando.mira.fevrandrana.entite.Partage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.addHeader("Access-Control-Allow-Origin", "*");
    int iduser = Integer.parseInt(request.getParameter("idu"));
    int idpublication = Integer.parseInt(request.getParameter("idpublication"));
    Partage p = new Partage();
    p.setIdpublication(idpublication);
    p.setIduser(iduser);
    p.setLongitude(0);
    p.setLatitude(0);
    p.insertPartager();
%>



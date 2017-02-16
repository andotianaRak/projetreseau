<%@page import="ando.mira.fevrandrana.entite.Utilisateur"%>
<%@page import="ando.mira.fevrandrana.database.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="ando.mira.fevrandrana.metier.Publier"%>
<%@page import="ando.mira.fevrandrana.entite.Partage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int iduser = Integer.parseInt(request.getParameter("shid"));
    int idpublication = Integer.parseInt(request.getParameter("pubtsid"));
    double longitude = Double.parseDouble(request.getParameter("longitude"));
    double latitude = Double.parseDouble(request.getParameter("latitude"));

    Partage p = new Partage();
    p.setIdpublication(idpublication);
    p.setIduser(iduser);
    p.setLongitude(longitude);
    p.setLatitude(latitude);

    p.insertPartager();
%>


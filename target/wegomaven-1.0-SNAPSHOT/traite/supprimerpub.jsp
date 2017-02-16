<%@page import="java.sql.Connection"%>
<%@page import="ando.mira.fevrandrana.database.DBConnect"%>
<%@page import="ando.mira.fevrandrana.entite.Publication"%>
<%@page import="ando.mira.fevrandrana.entite.DemandeAbonnement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.addHeader("Access-Control-Allow-Origin", "*");
    int idpublication =Integer.parseInt(request.getParameter("idpublication"));
    
    Publication publication = new Publication();
    publication.setIdpublication(idpublication);
    DBConnect dbc= new DBConnect();
    Connection c = dbc.getconn();
    publication.deletePublication(c);
    c.close();
%>
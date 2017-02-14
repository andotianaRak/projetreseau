<%@page import="ando.mira.fevrandrana.entite.Utilisateur"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = request.getParameter("email");
    String nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    String pwd = request.getParameter("motdepasse");
    Utilisateur user = new Utilisateur();
    user.setEmailuser(email);
    user.setNomuser(nom);
    user.setPrenomuser(prenom);
    user.setPwduser(pwd);
    int idnewuser = user.insertNewUserId();
    session.setMaxInactiveInterval(3600);
    session.setAttribute("id_user", email);
%>
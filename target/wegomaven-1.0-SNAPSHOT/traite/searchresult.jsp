<%@page import="org.json.JSONException"%>
<%@page import="ando.mira.fevrandrana.entite.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="ando.mira.fevrandrana.metier.Searching"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    String motcles = request.getParameter("q");
    Searching search = new Searching();
    List<Utilisateur> listuser = search.getSearchResult(motcles);

    JSONObject obj = null;
    JSONArray arr = new JSONArray();

    for (Utilisateur u : listuser) {
        try {
            obj = new JSONObject();
            obj.put("iduser", u.getIduser());
            obj.put("nomuser", u.getNomuser());
            obj.put("prenomuser", u.getPrenomuser());
            obj.put("emailuser", u.getEmailuser());
            obj.put("imguser", u.getImguser());
            obj.put("nomprenomuser", u.getPrenomuser() + " " + u.getNomuser());
            arr.put(obj);
        } catch (JSONException ex) {
        }
    }
    out.print(arr);
%>
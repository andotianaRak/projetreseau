<%@page import="org.json.JSONException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="ando.mira.fevrandrana.entite.DetPublication"%>
<%@page import="java.util.List"%>
<%@page import="ando.mira.fevrandrana.entite.Utilisateur"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Utilisateur u = new Utilisateur();
    int iduser = Integer.parseInt(request.getParameter("iduser"));
    u.setIduser(iduser);
    List<DetPublication> listdetpub = u.getAllPublications();

    JSONObject obj = null;
    JSONArray arr = new JSONArray();

    for (DetPublication ldp : listdetpub) {
        try {
            obj = new JSONObject();
            obj.put("confidentialite", ldp.getConfidentialite());
            obj.put("contenupublication", ldp.getContenupublication());
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
            obj.put("datepublication", sdf.format(ldp.getDatepublication()));
            obj.put("heurepublication", ldp.getHeurepublication());
            obj.put("idconfidentialite", ldp.getIdconfidentialite());
            obj.put("idpublication", ldp.getIdpublication());
            obj.put("iduser", ldp.getIduser());
            obj.put("latitude", ldp.getLatitude());
            obj.put("longitude", ldp.getLongitude());
            obj.put("nbrpa", ldp.getNbrpa());
            obj.put("nomprenom", ldp.getNomPrenom());
            arr.put(obj);
        } catch (JSONException ex) {
        }
    }

    out.println(arr);

%>
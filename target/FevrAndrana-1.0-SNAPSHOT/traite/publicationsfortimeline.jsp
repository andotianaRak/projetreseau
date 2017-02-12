
<%@page import="org.json.JSONException"%>
<%@page import="entite.Utilisateur"%>
<%@page import="entite.DetPartage"%>
<%@page import="java.util.List"%>
<%@page import="org.json.JSONArray"%>
<%@page import="entite.DetPublication"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Utilisateur u = new Utilisateur();
    int iduser = Integer.parseInt(request.getParameter("iduser"));
    u.setIduser(iduser);
    List<DetPublication> listdetpub = u.getAllPublicationsForTimeline();
    List<DetPartage> listedetpart = u.getAllPartagesForTimeline();

    JSONObject obj = null;
    JSONArray arr = new JSONArray();

    for (DetPublication ldp : listdetpub) {
        try {
            obj = new JSONObject();
            obj.put("confidentialite", ldp.getConfidentialite());
            obj.put("contenupublication", ldp.getContenupublication());
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-YYYY");
            obj.put("datepublication", sdf.format(ldp.getDatepublication()));
            obj.put("heurepublication", ldp.getHeurepublication());
            obj.put("idconfidentialite", ldp.getIdconfidentialite());
            obj.put("idpublication", ldp.getIdpublication());
            obj.put("iduser", ldp.getIduser());
            obj.put("latitude", ldp.getLatitude());
            obj.put("longitude", ldp.getLongitude());
            obj.put("nbrpa", ldp.getNbrpa());
            obj.put("nomprenom", ldp.getNomPrenom());
            //obj.put("imguser", ldp.getImguser());

            obj.put("idpartage", ldp.getIdpublication());
            obj.put("datepartage", sdf.format(ldp.getDatepublication()));
            obj.put("heurepartage", ldp.getHeurepublication());
            obj.put("longpartage", "null");
            obj.put("latpartage", "null");
            obj.put("idpartageur", "null");
            obj.put("nompartageur", "null");
            obj.put("prenompartageur", "null");
            obj.put("nomprenompartageur", "null null");
            obj.put("emailpartageur", "null");
            obj.put("imgpartageur", "null");

            obj.put("dateheurepub", sdf.format(ldp.getDatepublication()) + " " + ldp.getHeurepublication());

            arr.put(obj);
        } catch (JSONException ex) {
        }
    }
    for (DetPartage ldp : listedetpart) {
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
            //   obj.put("imguser", ldp.getImguser());

            obj.put("idpartage", ldp.getIdpartage());
            obj.put("datepartage", sdf.format(ldp.getDatepartage()));
            obj.put("heurepartage", ldp.getHeurepartage());
            obj.put("longpartage", ldp.getLongpartage());
            obj.put("latpartage", ldp.getLatpartage());
            obj.put("idpartageur", ldp.getIdpartageur());
            obj.put("nompartageur", ldp.getNompartageur());
            obj.put("prenompartageur", ldp.getPrenompartageur());
            obj.put("nomprenompartageur", ldp.getPrenompartageur() + " " + ldp.getNompartageur());
            obj.put("emailpartageur", ldp.getEmailpartageur());
            obj.put("imgpartageur", "null");

            obj.put("dateheurepub", sdf.format(ldp.getDatepartage()) + " " + ldp.getHeurepartage());

            arr.put(obj);
        } catch (JSONException ex) {
        }
    }
    out.println(arr);

%>
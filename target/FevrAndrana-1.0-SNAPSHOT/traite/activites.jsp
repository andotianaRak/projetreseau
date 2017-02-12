<%@page import="org.json.JSONException"%>
<%@page import="entite.DetPartage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="entite.DetPublication"%>
<%@page import="entite.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="entite.Tag"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    Utilisateur u = new Utilisateur();
    int iduser = Integer.parseInt(request.getParameter("iduser"));
    u.setIduser(iduser);
    List<DetPublication> listdetpub = u.getAllPublicationsForNotif();
    List<DetPartage> listedetpart = u.getAllPartagesForNotif();

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
            obj.put("imguser", ldp.getImguser());

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
            obj.put("imgpartageur", ldp.getImguser());

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
            obj.put("imguser", ldp.getImguser());

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
            obj.put("imgpartageur", ldp.getImgpartageur());

            obj.put("dateheurepub", sdf.format(ldp.getDatepartage()) + " " + ldp.getHeurepartage());

            arr.put(obj);
        } catch (JSONException ex) {
        }
    }

    out.println(arr);

%>
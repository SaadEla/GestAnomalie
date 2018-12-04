<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/accadmin.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/form.css"/>" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>ACC ADMIN</title>
</head>
<body>
<div class="icon-bar">
  <a  href="accadmin"><i class="fa fa-home"></i></a>  
  <a href="demandeInscription"><i class="fa fa-envelope"></i></a> 
  <div class="icon-bar-right">
    <a href="deconnexion"><i class="fas fa-power-off"></i></a>
  </div>
</div>
<div class="login-page">
  <div class="form">
    <form class="login-form" method="post" action="accadmin">
                 <td><em><strong>Projet</strong></em></td> 
                <input type="text"  id="projet" name="projet" value="" size="20" maxlength="60" />
                <br />
                <td><em><strong>Responsable activite</strong></em></td>
                <select style="width:268px;height:44px;text-align:center;margin-bottom:5px;background: #f2f2f2;" name="responsable_activite">
                    <option></option>
                    <option>BALLOU</option>
                    <option>CHOUKAR</option>
                    <option>JAHID</option>
                    <option>JENYEH</option>
                    <option>MACHKOUR</option>
                    <option>NABIL</option>
                    <option>NASSIH</option>
                </select>
                </br>
                <td><em><strong>Non Conformite</strong></em></td>
                <select style="width:268px;height:44px;text-align:center;margin-bottom:5px;background: #f2f2f2;" name="non_conformite">
                    <option></option>
                    <option>Compactage</option>
                    <option>Etanchéité</option>
                    <option>Inspection TV</option>
                    <option>Inspection V</option>
                    <option>Réfection</option>

                </select>
                </br>
                <td><em><strong>Entité</strong></em></td>
                <select style="width:268px;height:44px;text-align:center;margin-bottom:5px;background: #f2f2f2;" name="entite">
                    <option></option>
                    <option>ECP</option>
                    <option>GP</option>
                    <option>INFRA</option>
                    <option>INMAE</option>
                    <option>Lotissements</option>
                    <option>OS</option>
                    <option>VT</option>
                </select>
                </br>                                
                <input type="submit" value="Consulter" class="button" />
    </form>
  </div>
</div>

</body>
</html>
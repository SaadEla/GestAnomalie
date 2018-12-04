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
<title>Ajouter</title>
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
    <form method="post" action="ajouter">
                 <td><em><strong>Date Rapport</strong></em></td> 
                <input type="text"  id="date_rapport" name="date_rapport" value="" size="20" maxlength="60" />
                <br />
                <td><em><strong>Non Conformite</strong></em></td>
                <select style="width:268px;height:44px;text-align:center;margin-bottom:5px;background: #f2f2f2;" name="non_conformite">
                    <option>Compactage</option>
                    <option>Etanchéité</option>
                    <option>Inspection TV</option>
                    <option>Inspection V</option>
                    <option>Réfection</option>
                </select>
                </br>
                 <td><em><strong>Annee</strong></em></td> 
                <input type="text"  id="anne" name="annee" value="" size="20" maxlength="60" />
                <br />
                <td><em><strong>Entité</strong></em></td>
                <select style="width:268px;height:44px;text-align:center;margin-bottom:5px;background: #f2f2f2;" name="entite">
                    <option>ECP</option>
                    <option>GP</option>
                    <option>INFRA</option>
                    <option>INMAE</option>
                    <option>Lotissements</option>
                    <option>OS</option>
                    <option>VT</option>
                </select>
                </br>  
                <td><em><strong>Responsable activite</strong></em></td>
                <select style="width:268px;height:44px;text-align:center;margin-bottom:5px;background: #f2f2f2;" name="responsable_activite">
                    <option>BALLOU</option>
                    <option>CHOUKAR</option>
                    <option>DARID</option>
                    <option>JENYEH</option>
                    <option>MACHKOUR</option>
                    <option>NABIL</option>
                    <option>NASSIH</option>
                </select>
                </br>
                 <td><em><strong>Projet</strong></em></td> 
                <input type="text"  id="projet" name="projet" value="" size="20" maxlength="600" />
                <br />
                 <td><em><strong>Commune</strong></em></td> 
                <input type="text"  id="commune" name="commune" value="" size="20" maxlength="60" />
                <br />           
                 <td><em><strong>Metier</strong></em></td> 
                <input type="text"  id="metier" name="metier" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Entreprise</strong></em></td> 
                <input type="text"  id="entreprise" name="entreprise" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Essai1</strong></em></td> 
                <input type="text"  id="essai1" name="essai1" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Essai2</strong></em></td> 
                <input type="text"  id="essai2" name="essai2" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Essai3</strong></em></td> 
                <input type="text"  id="essai3" name="essai3" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Essai4</strong></em></td> 
                <input type="text"  id="essai4" name="essai4" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Date Reprise</strong></em></td> 
                <input type="text"  id="date_reprise" name="date_reprise" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Delai</strong></em></td> 
                <input type="text"  id="delai" name="delai" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Etat</strong></em></td> 
                <input type="text"  id="etat" name="etat" value="" size="20" maxlength="60" />
                <br />
                 <td><em><strong>Remarque</strong></em></td> 
                <input type="text"  id="remarque" name="remarque" value="" size="20" maxlength="600" />
                <br />
                <input type="submit" value="Ajouter" class="button" />
    </form>
  </div>
</div>

</body>
</html>
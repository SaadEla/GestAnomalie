<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/accadmin.css"/>" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/demandeinscr.css"/>" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<title>Gestion Anomalie</title>
</head>
<body>
<div class="icon-bar">
  <a  href="accadmin"><i class="fa fa-home"></i></a>  
  <a href="demandeInscription"><i class="fa fa-envelope"></i></a> 
  <div class="icon-bar-right">
    <a href="deconnexion"><i class="fas fa-power-off"></i></a>
  </div>
</div>
</br></br></br></br>
<div><a href="synthese.jsp">Synthése globale des Reprises des nons conformités non traitées</a></div>
<div><a href="Synthesee.jsp">Synthése globale des Reprises des nons conformités traitées</a></div>
       <h1 style="padding-left: 500px;font-family: Tahoma, Garamond, sans-serif;">GESTION ANOMALIE: Etat OK</h1></caption>
<table class="table-style-two" height=200%  width=75% align="center" action="gestion">
    <thead>
       <tr>
         <a  href="ajouter"><button style="position:absolute;width:100px;left: 2px;top: 170px;">Ajouter</button></a>
         <th><strong>Date Rapport</strong></th>
         <th><strong>Non Conformite</strong></th>
         <th><strong>Annee</strong> </th>  
         <th><strong>Entite</strong> </th>
         <th><strong>Resp/CA</strong></th>
         <th><strong>Projet</strong></th>
         <th><strong>Commune</strong> </th>  
         <th><strong>Metier</strong> </th>
         <th><strong>Entreprise</strong> </th>
         <th><strong>Essai1</strong> </th>
         <th><strong>Essai2</strong> </th>
         <th><strong>Essai3</strong> </th>
         <th><strong>Essai4</strong> </th>
         <th><strong>Date reprise</strong> </th>
         <th><strong>Delai</strong> </th>
         <th><strong>Etat</strong> </th>
         <th><strong>Remarques</strong></th>
       </tr>
    </thead>
    <tbody>
       <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/LYDEC?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" user="root" password="" />
       <sql:query var="rs" dataSource="${db}">select * from data where Etat="OK" and(Projet ='<%=session.getAttribute("projet").toString() %>' or Responsable_activite ='<%=session.getAttribute("responsable_activite").toString() %>' or Non_conformite ='<%=session.getAttribute("non_conformite").toString() %>' or Entite ='<%=session.getAttribute("entite").toString() %>')</sql:query>
       <c:forEach items="${rs.rows}" var="dat">
         <tr>
         <input type="hidden" class="okh" value="<c:out value="${dat.id}"/>">
         <td class="a"><c:out  value="${dat.Date_rapport}"/></td>
         <td class="b"><c:out value="${dat.Non_conformite}"/></td>
         <td class="c"><c:out value="${dat.Annee}"/></td>
         <td class="d"><c:out value="${dat.Entite}"/></td>
         <td class="e"><c:out value="${dat.Responsable_activite}"/></td>
         <td class="f"><c:out value="${dat.Projet}"/></td>
         <td class="g"><c:out value="${dat.Commune}"/></td>
         <td class="h"><c:out value="${dat.Metier}"/></td>
         <td class="i"><c:out value="${dat.Entreprise}"/></td>
         <td class="j"><c:out value="${dat.Essai1}"/></td>
         <td class="k"><c:out value="${dat.Essai2}"/></td>
         <td class="l"><c:out value="${dat.Essai3}"/></td>
         <td class="m"><c:out value="${dat.Essai4}"/></td>
         <td class="n"><c:out value="${dat.Date_entreprise}"/></td>
         <td class="o"><c:out value="${dat.Delai}"/></td>
         <td class="p"><c:out value="${dat.Etat}"/></td>
         <td class="q"><c:out value="${dat.Remarque}"/></td>
         <td class="buttonmodifier"><button data-toggle="modal" data-target="#exampleModal"  >Modifier</button></td>
         <td class="buttonsupprimer"><input type="submit" value="Supprimer" ></td>
       </c:forEach>
       </tr>
    </tbody>
</table>
       <h1 style="padding-left: 500px;font-family: Tahoma, Garamond, sans-serif;">GESTION ANOMALIE: Etat NOK</h1></caption>
<table class="table-style-two" height=200%  width=75% align="center" action="gestion">
    <thead>
       <tr>
         <th><strong>Date Rapport</strong></th>
         <th><strong>Non Conformite</strong></th>
         <th><strong>Annee</strong> </th>  
         <th><strong>Entite</strong> </th>
         <th><strong>Resp/CA</strong></th>
         <th><strong>Projet</strong></th>
         <th><strong>Commune</strong> </th>  
         <th><strong>Metier</strong> </th>
         <th><strong>Entreprise</strong> </th>
         <th><strong>Essai1</strong> </th>
         <th><strong>Essai2</strong> </th>
         <th><strong>Essai3</strong> </th>
         <th><strong>Essai4</strong> </th>
         <th><strong>Date reprise</strong> </th>
         <th><strong>Delai</strong> </th>
         <th><strong>Etat</strong> </th>
         <th><strong>Remarques</strong></th>
       </tr>
    </thead>
    <tbody>
       <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/LYDEC?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" user="root" password="" />
       <sql:query var="rs" dataSource="${db}">select * from data where Etat="NOK" and Projet =' <%=session.getAttribute("projet").toString() %>'</sql:query>
       <c:forEach items="${rs.rows}" var="dat">
         <tr>
         <input type="hidden" class="okh" value="<c:out value="${dat.id}"/>">
         <td class="a"><c:out  value="${dat.Date_rapport}"/></td>
         <td class="b"><c:out value="${dat.Non_conformite}"/></td>
         <td class="c"><c:out value="${dat.Annee}"/></td>
         <td class="d"><c:out value="${dat.Entite}"/></td>
         <td class="e"><c:out value="${dat.Responsable_activite}"/></td>
         <td class="f"><c:out value="${dat.Projet}"/></td>
         <td class="g"><c:out value="${dat.Commune}"/></td>
         <td class="h"><c:out value="${dat.Metier}"/></td>
         <td class="i"><c:out value="${dat.Entreprise}"/></td>
         <td class="j"><c:out value="${dat.Essai1}"/></td>
         <td class="k"><c:out value="${dat.Essai2}"/></td>
         <td class="l"><c:out value="${dat.Essai3}"/></td>
         <td class="m"><c:out value="${dat.Essai4}"/></td>
         <td class="n"><c:out value="${dat.Date_entreprise}"/></td>
         <td class="o"><c:out value="${dat.Delai}"/></td>
         <td class="p"><c:out value="${dat.Etat}"/></td>
         <td class="q"><c:out value="${dat.Remarque}"/></td>
         <td class="buttonmodifier"><button data-toggle="modal" data-target="#exampleModal"  >Modifier </button></td>
         <td class="buttonsupprimer"><input type="submit" value="Supprimer"  ></td>
       </c:forEach>
       </tr>
    </tbody>
</table>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Gestion anomalie</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<table>
				<tr>
					<td><label>Date Rapport</label></td>
					<td><input type="text" name="" class="aa"></td>
				</tr>
			<tr>
					<td><label>Non conformite</label></td>
					<td><input type="text" name="" class="bb"></td>
				</tr>
			<tr>
					<td><label>Anne</label></td>
					<td><input type="text" name="" class="cc"></td>
				</tr>
			<tr>
					<td><label>Entite</label></td>
					<td><input type="text" name="" class="dd"></td>
				</tr>
			<tr>
					<td><label>Responsable activite</label></td>
					<td><input type="text" name="" class="ee"></td>
				</tr>
			<tr>
					<td><label>Projet</label></td>
					<td><input type="text" name="" class="ff"></td>
				</tr>
			<tr>
					<td><label>Commune</label></td>
					<td><input type="text" name="" class="gg"></td>
				</tr>
			<tr>
					<td><label>Metier</label></td>
					<td><input type="text" name="" class="hh"></td>
				</tr>
			<tr>
					<td><label>Entreprise</label></td>
					<td><input type="text" name="" class="ii"></td>
				</tr>
			<tr>
					<td><label>Essai1</label></td>
					<td><input type="text" name="essai1" class="jj"></td>
				</tr>
			<tr>
					<td><label>Essai2</label></td>
					<td><input type="text" name="essai2" class="kk"></td>
				</tr>
			<tr>
					<td><label>Essai3</label></td>
					<td><input type="text" name="essai3" class="ll"></td>
				</tr>
			<tr>
					<td><label>Essai4</label></td>
					<td><input type="text" name="essai4" class="mm"></td>
				</tr>
			<tr>
					<td><label>Date reprise</label></td>
					<td><input type="text" name="date_reprise" class="nn"></td>
				</tr>
			<tr>
					<td><label>Delai</label></td>
					<td><input type="text" name="delai" class="oo"></td>
				</tr>			
				<tr>
					<td><label>Etat</label></td>
					<td><input type="text" name="etat" class="pp"></td>
				</tr>
				<tr>
					<td><label>Remarque</label></td>
					<td><input type="text" name="remarque" class="qq"></td>
				</tr>
		</table>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Quitter</button>
        <button type="button" class="btn btn-primary valider">Valider</button>
      </div>
    </div>
  </div>
</div>
</body>
<script type="text/javascript">
$(function(){
	$(".buttonsupprimer").click(function(){
		var i =0;
		var res = $(this).parent().find(".okh").val();
	console.log(res);	
	$.post("supprimer",{
		id : res
	},	function(data){
		alert('Ligne Supprimée')
	}
)
})

$(".buttonmodifier").click(function(){
	$(".aa").val( $(this).parent().find(".a").text());
	$(".bb").val($(this).parent().find(".b").text());
	$(".cc").val( $(this).parent().find(".c").text());
	$(".dd").val($(this).parent().find(".d").text());
	$(".ee").val( $(this).parent().find(".e").text());
	$(".ff").val($(this).parent().find(".f").text());
	$(".gg").val( $(this).parent().find(".g").text());
	$(".hh").val($(this).parent().find(".h").text());
	$(".ii").val( $(this).parent().find(".i").text());
	$(".jj").val($(this).parent().find(".j").text());
	$(".kk").val( $(this).parent().find(".k").text());
	$(".ll").val($(this).parent().find(".l").text());
	$(".mm").val( $(this).parent().find(".m").text());
	$(".nn").val($(this).parent().find(".n").text());
	$(".oo").val( $(this).parent().find(".o").text());
	$(".pp").val($(this).parent().find(".p").text());
	$(".qq").val( $(this).parent().find(".q").text());
	})

	$(".valider").click(function(){
		var aa = $(".aa").val();
		var bb =$(".bb").val();
		var cc =$(".cc").val();
		var dd =$(".dd").val();
		var ee =$(".ee").val();
		var ff =$(".ff").val();
		var gg =$(".gg").val();
		var hh =$(".hh").val();
		var ii =$(".ii").val();
		var jj =$(".jj").val();
		var kk =$(".kk").val();
		var ll =$(".ll").val();
		var mm =$(".mm").val();
		var nn =$(".nn").val();
		var oo =$(".oo").val();
		var pp =$(".pp").val();
		var qq =$(".qq").val();

		$.post("gestion",{
			aa : aa ,
			bb : bb,
			cc : cc ,
			dd : dd,
			ee : ee ,
			ff : ff,
			gg : gg ,
			hh : hh,
			ii : ii ,
			jj : jj,
			kk : kk ,
			ll : ll,
			mm : mm ,
			nn : nn,
			oo : oo ,
			pp : pp,
			qq : qq ,	
		},function(data){
			location.reload()
		})
	})

})

</script>
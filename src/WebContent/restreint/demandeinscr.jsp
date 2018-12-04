<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/accadmin.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/demandeinscr.css"/>" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Demande Inscription</title>
</head>
<body>

<div class="icon-bar">
  <a  href="accadmin"><i class="fa fa-home"></i></a>  
  <a href="#"><i class="fa fa-envelope"></i></a> 
  <div class="icon-bar-right">
    <a href="deconnexion"><i class="fas fa-power-off"></i></a>
  </div>
</div>

</br></br></br></br></br>
<table class="table-style-two" height=200%  width=75% align="center">
    <caption><h1>Nombre de demande d'inscrption:</h1></caption>
    <thead>
       <tr>
         <th><strong>Email</strong></th>
         <th><strong>Mot de Passe</strong></th>
         <th><strong>Nom</strong> </th>  
         <th><strong>Date Inscription</strong> </th>
       </tr>
    </thead>
    <tbody>
       <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/LYDEC?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" user="root" password="" />
       <sql:query var="rs" dataSource="${db}">select * from inscription</sql:query>
       <c:forEach items="${rs.rows}" var="inscription">
         <tr>
         <td><c:out value="${inscription.email}"></c:out></td>
         <td><c:out value="${inscription.mot_de_passe}"></c:out></td>
         <td><c:out value="${inscription.nom}"></c:out></td>
         <td><c:out value="${inscription.date_inscription}"></c:out></td>
         <td class="buttonajouter"><input type="submit" value="Ajouter" style="width:100%;height:100%"></td>
         <td class="buttonsupprimer"><input type="submit" value="Supprimer" style="width:100%;height:100%"></td>
       </c:forEach>
       </tr>
    </tbody>
</table>

</br></br></br></br>
<table class="table-style-two" height=200%  width=75% align="center">
    <caption><h1>Utilisateurs:</h1></caption>
    <thead>
       <tr >
         <th class="util"><strong>Email</strong></th>
         <th class="util"><strong>Mot de Passe</strong></th>
         <th class="util"><strong>Nom</strong> </th>  
         <th class="util"><strong>Date Inscription</strong> </th>
       </tr>
    </thead>
    <tbody>
 <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/LYDEC?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" user="root" password="" />
       <sql:query var="rs" dataSource="${db}">select * from utilisateur</sql:query>
       <c:forEach items="${rs.rows}" var="utilisateur">
         <tr>
         <td class="emaildel"><c:out value="${utilisateur.email}"></c:out></td>
         <td><c:out value="${utilisateur.mot_de_passe}"></c:out></td>
         <td><c:out value="${utilisateur.nom}"></c:out></td>
         <td><c:out value="${utilisateur.date_inscription}"></c:out></td>
         <td class="deletutilisateur"><input type="submit" value="Supprimer"  style="width:100%;height:100%"></td>
       </c:forEach>
       </tr>
    </tbody>
</table>


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(function(){
	
	$(".buttonajouter").click(function(){
		var i =0;
		var res = [];
		$(this).parent().find("td").each(function(){
			if (i<4){
			res.push($(this).text());
			}
			i++;

		})	
	console.log(res);
		
		$(this).parent().hide();
		$.post("demandeInscription",{
			email:res[0],
			motdepasse:res[1],
			nom:res[2],
			date_inscription:res[3]
					},function(data){
			alert("Inscriprion confirmée")
		})
	})
	


	
	$(".deletutilisateur").click(function(){
		var i =0;
		var res = $(this).parent().find(".emaildel").text();
	console.log(res);
	$(this).parent().hide();
	$.post("supprimerutilisateur",{
		email:res,
		
				},function(data){
		alert("Utilisateur Supprime")
	})
		
		
	})
	$(".buttonsupprimer").click(function(){
		var i =0;
		var res = $(this).parent().find(".emaildel").text();
	console.log(res);
	$(this).parent().hide();
	$.post("supprimerinscription",{
		email:res,
		
				},function(data){
		alert("Inscription Supprimée")
	})
		
		
	})
	
})
</script>

</html>
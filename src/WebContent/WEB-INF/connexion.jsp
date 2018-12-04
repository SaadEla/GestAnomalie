<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Connexion</title>
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/form.css"/>" />
</head>
<body style="background-image:url('http://www.mapexpress.ma/wp-content/uploads/2015/11/logo-lydec.jpg');background-attachment: fixed;background-position:center top;background-size:230px 130px;background-repeat: no-repeat;">
<div class="login-page">
  <div class="form">
    <form class="login-form" method="POST" action="connexion">
       <input type="text" id="nom" name="nom" value="" placeholder="username"size="20" maxlength="20" />
       <span class="erreur">${erreurs['nom']}</span>
       </br>
       <input type="password" placeholder="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
       <span class="erreur">${erreurs['motdepasse']}</span>
      <input type="submit" value="LOG IN" class="button" />
      </br>
      <p class="message">Not registered? <a href="inscription">Create an account</a></p>
    </form>
  </div>
</div>
</body>
</html>
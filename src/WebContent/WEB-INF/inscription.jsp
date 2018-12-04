<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/form.css"/>" />
    </head>

    <body style="background-image:url('http://www.mapexpress.ma/wp-content/uploads/2015/11/logo-lydec.jpg');background-attachment: fixed;background-position:center top;background-size:230px 130px;background-repeat: no-repeat;">
<div class="login-page">
  <div class="form">
    <form class="login-form" method="post" action="inscription">
                <input type="email" placeholder="Email" id="email" name="email" value="" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['email']}</span>
                <br />
                <input type="text" id="nom" placeholder="Username" name="nom" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['nom']}</span>
                <br />
                <input type="password" placeholder="Password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['motdepasse']}</span>
                <br />
                <input type="submit" value="SIGN IN" class="button" />
    </form>
  </div>
</div>
</body>
</html>
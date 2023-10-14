<%-- 
    Document   : areaPersonale
    Created on : 31 mag 2022, 11:14:00
    Author     : matte
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title> GameSociety </title>
        <link rel="icon" type="image/x-icon" href="img/logo.png">
        <meta charset="UTF-8">
        <meta name ="author" content ="fSociety">
        <meta name =" description " content =" Negozio online di videogiochi">
        <meta name =" keywords" content ="videogiochi,pc,games">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com/" >
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Mukta:wght@200&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen"/>
    </head>
    <c:if test="${empty utente.getUsername()}">
        <c:redirect url="login.jsp"/>
    </c:if>
    <c:if test="${not empty utente.getUsername()}">
        <c:set var="page" value="areaPersonale" scope="request"/>
    </c:if>
    <body>
        <%@ include file="header.jsp" %>
        <nav>
            <div>
                <ul>
                    <li><a href="index.jsp" > Home </a></li>
                    <li><a href ="nuovoProdotto.jsp"> Nuovo Videogame </a></li>
                    <li><a href ="listinoVideogiochi.jsp"> Listino Videogiochi </a></li>
                    <li><a href ="chiSiamo.jsp" > Chi siamo </a></li>
                    <li><a href ="login.jsp" class="active"> Login </a></li>
                </ul>
            </div>
        </nav>
        <br>
        <div class="col-3 col-s-3">
            

            <%@ include file="pubblicita1.jsp" %>
            <div id="contenutoPrincipale">
            <br>
            
            <div class="boxPresentazionePrincipale">
                
                
                <div class="infoPagPrincipale">
                    <h2 id="titoloh2"> Benvenuto ${utente.getNome()}! </h2>
                <div class="infoPagPrincipale">
                            <b>Nome:</b> ${utente.getNome()};
                            <br> <b>Cognome:</b> ${utente.getCognome()};
                            <br> <b>Indirizzo e-mail: </b> ${utente.getEmail()};
                            <br> <b> Residenza:</b> ${utente.getCitta()};
                    <br>
                    <br>
                    
                </div>
            </div>

        </div>
        </div>
        </div>

        <%@ include file="pubblicita2.jsp" %>
        <%@ include file="footer.jsp" %>
         <script type ="text/javascript" src="js/dimensioneFont.js"></script>
    </body>
</html>

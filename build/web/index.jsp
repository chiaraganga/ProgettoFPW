<%-- 
    Document   : index
    Created on : 31 mag 2022, 09:47:05
    Author     : matte
--%>

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
    <body >
        <%@ include file="header.jsp" %>

        <nav>
            <div>
                <ul>
                    <li><a href="index.jsp" class="active">Home</a></li>
                    <li><a href ="nuovoProdotto.jsp"> Nuovo Videogame</a></li>
                    <li><a href ="listinoVideogiochi.jsp"> Listino Videogiochi </a></li>
                    <li><a href ="chiSiamo.jsp"> Chi siamo</a></li>
                    <li><a href ="login.jsp"> Login </a></li>
                </ul>
            </div>
        </nav>

        <br>
        <div class="col-3 col-s-3">

            <%@ include file="pubblicita1.jsp" %>
            
            <div id="contenutoPrincipale">
                <article>
                    <h2 id="titolo1"> Benvenuti! </h2>
                    <div class="boxPresentazionePrincipale">
                        <div class="infoPagPrincipale">
                            <br> GameSociety è un azienda che si occupa di rivendere videogames,
                            cercando di far risparmiare gli utenti.
                            <br> Portando sempre nuovi giochi, ci assicuriamo che anche un
                            gioco appena uscito sia immediatamente disponibile per l'acquisto.
                            <br> Inoltre, tra poco inzia il Black Friday, quindi, 
                            approfittane!
                        </div>
                    </div>
                </article>
            </div>

        </div>
        <%@ include file="pubblicita2.jsp" %>
        <%@ include file="footer.jsp" %>
        
        <script type ="text/javascript" src="js/dimensioneFont.js"></script>
    </body>
</html>

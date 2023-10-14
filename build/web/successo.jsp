<%-- 
    Document   : successo
    Created on : 3 giu 2022, 11:29:34
    Author     : erica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Successo!</title>
        <link rel="icon" type="image/x-icon" href="img/logo.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <div id="container">

            <%@ include file="header.jsp" %>
            
            <div class="col-3 col-s-3">
             <div id="contenutoPrincipale">

            <div class="boxPresentazionePrincipale">
                <h2 id="titoloh2"> Hai inserito un nuovo gioco correttamente! </h2>
                <div class="infoPagPrincipale">
                    
                    <a href="index.jsp"> Torna indietro</a>
                    
                    
                </div>
            </div> 
        </div>
            </div>
            <%@ include file="pubblicita2.jsp" %>
                <div id="push"> </div>
        </div>
        <%@ include file="footer.jsp" %>
         <script type ="text/javascript" src="js/dimensioneFont.js"></script>
    </body>
</html>


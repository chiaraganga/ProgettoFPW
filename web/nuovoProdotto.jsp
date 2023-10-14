<%-- 
    Document   : nuovoProdotto
    Created on : 31 mag 2022, 09:50:37
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
        <script type="text/javascript" src="js/jquery.js"></script>

    </head>

    <c:if test="${empty utente.getUsername()}">
        <c:redirect url="login.jsp"/>
    </c:if>
    <c:if test="${not empty utente.getUsername()}">

        <body >
            
            <%@ include file="header.jsp" %>

            <nav>
                <ul>
                    <li><a href="index.jsp" >Home</a></li>
                    <li><a href ="nuovoProdotto.jsp" class="active"> Nuovo Videogame</a></li>
                    <li><a href ="listinoVideogiochi.jsp"> Listino Videogiochi </a></li>
                    <li><a href ="chiSiamo.jsp"> Chi siamo</a></li>
                    <li><a href ="login.jsp"> Login </a></li>
                </ul>
            </nav>

            <br>
            
            <div class="col-3 col-s-3">
                
                <%@ include file="pubblicita1.jsp" %>
                
                <div id="contenutoPrincipale">
                    
                    <br>
                    
                    <h2 id="titoloh2">  Inserisci un nuovo gioco al listino </h2>

                    <article>

                        <form action="inserimentoProdotto" method="post" id="form" enctype="multipart/form-data">

                            <div id="inserimento">
                                <h3> Dettagli gioco: </h3>
                                <label for="titoloForm" class="reviewDisplay" id="caratteriRimanentiTitolo"> Titolo:(0/30) </label> 
                                <input type="text" name="titolo" placeholder="Inserire un titolo" id="titoloForm" class="allineaInput">
                                <label for="genere" class="reviewDisplay" id="caratteriRimanentiGenere"><br> Genere:(0/20) </label>
                                <input type="text" name="genere" placeholder="Inserire un genere" id="genere" class="allineaInput">
                                <label for="descrizione" class="reviewDisplay" id="caratteriRimanenti"><br>Descrizione (Trama): (0/500) </label>
                                <textarea rows="4" cols="20" name="descrizione" id="descrizione" class="allineaInput" placeholder="Inserire una descrizione"></textarea>

                                <label for ="copertina" class="reviewDisplay"><br>Copertina: </label>
                                <input type="file" name="immagine" accept="image/*" id="immagine" class="allineaInput"> 
                                <label for="prezzo" class="reviewDisplay" ><br>Prezzo: </label>
                                <input type="number" id="prezzo" name="prezzo" placeholder="Prezzo" class="allineaInput">
                                <label for="produttore" class="reviewDisplay" id="caratteriRimanentiProduttore"><br>Produttore:(0/15) </label>
                                <input type="text" name="produttore" placeholder="Inserire il nome del produttore" id="produttore" class="allineaInput">
                                <label for="rilascio" class="reviewDisplay"><br>Data di rilascio: </label>
                                <input type="date" id="rilascio" name="rilascio" class="allineaInput">
                            </div>

                            <div id="requisiti">
                                <div id="requisitiminimi">
                                    <h3> Requisiti minimi: </h3>
                                    <label for="osM" class="reviewDisplay" id="caratteriRimanentiOsm"><br>Sistema operativo:(0/40) </label>
                                    <input type="text" name="os" placeholder="Inserire sistema operativo" id="osM" class="allineaInput">
                                    <label for="cpuM" class="reviewDisplay" id="caratteriRimanentiCpuM"><br>Processore:(0/40) </label>
                                    <input type="text" name="cpu" placeholder="Inserire processore" id="cpuM" class="allineaInput">
                                    <label for="ramM" class="reviewDisplay"><br>Memoria: </label>
                                    <input type="text" name="ram" placeholder="Inserire memoria RAM" id="ramM" class="allineaInput">
                                    <label for="gpuM" class="reviewDisplay" id="caratteriRimanentiGpuM"><br>Scheda video:(0/40)</label>
                                    <input type="text" name="sv" placeholder="Inserire scheda video" id="gpuM" class="allineaInput">
                                </div>

                                <div id="requisiticonsigliati">
                                    <h3> Requisiti consigliati: </h3>
                                    <label for="osC" class="reviewDisplay" id="caratteriRimanentiOsc"><br>Sistema operativo:(0/40) </label>
                                    <input type="text" name="osC" placeholder="Inserire sistema operativo" id="osC" class="allineaInput">
                                    <label for="cpuC" class="reviewDisplay" id="caratteriRimanentiCpuC"><br>Processore:(0/40) </label>
                                    <input type="text" name="cpuC" placeholder="Inserire processore" id="cpuC" class="allineaInput">
                                    <label for="ramC" class="reviewDisplay"><br>Memoria: </label>
                                    <input type="text" name="ramC" placeholder="Inserire memoria RAM" id="ramC" class="allineaInput">
                                    <label for="gpuC" class="reviewDisplay" id="caratteriRimanentiGpuC"><br>Scheda video:(0/40) </label>
                                    <input type="text" name="svC" placeholder="Inserire scheda video" id="gpuC" class="allineaInput">
                                </div>

                                <input type="submit" value="Pubblica gioco">
                            </div>

                        </form>
                    </article>
                </div>
            </div>

            <%@ include file="pubblicita2.jsp" %>
            <%@ include file="footer.jsp" %>
        </c:if>
            
        <script type ="text/javascript" src="js/codeProdotto.js"></script>
        <script type ="text/javascript" src="js/dimensioneFont.js"></script>
    </body>
</html>

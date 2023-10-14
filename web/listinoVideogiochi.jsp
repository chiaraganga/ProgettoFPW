<%-- 
    Document   : listinoVideogiochi
    Created on : 31 mag 2022, 09:49:06
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

    <c:if test="${empty videogioco}">
        <c:redirect url="/listinoVideogiochi"/>
    </c:if>
    <c:if test="${not empty utente.getUsername()}">
        <c:if test="${not empty videogioco}">

            <body>
                <%@ include file="header.jsp" %>

                <nav>
                    <div>
                        <ul>
                            <li><a href="index.jsp" > Home </a></li>
                            <li><a href ="nuovoProdotto.jsp"> Nuovo Videogame </a></li>
                            <li><a href ="listinoVideogiochi.jsp" class="active"> Listino Videogiochi </a></li>
                            <li><a href ="chiSiamo.jsp"> Chi siamo  </a></li>
                            <li><a href ="login.jsp"> Login </a></li>
                        </ul>
                    </div>
                </nav>

                <br>
                
                <div class="col-3 col-s-3">

                    <%@ include file="pubblicita1.jsp" %>
                    
                    <div id="contenutoPrincipale">
                        <div id="bookmark1" class="presentazioneListino">
                            Acquista i tuoi giochi preferiti, o trovane di nuovi,comodamente
                            da casa e scaricali subito!
                            Qui troverai tutti i videogiochi in vendita nel nostro sito. <br>
                            Scegli tra quelli più ricercati dagli utenti. Solo il 
                            meglio del mondo games scelto per voi dallo staff di GameSociety. 
                            <br> Inizia a fare acquisti!
                        </div>
                        <br>
                        
                        <h2 id="titoloh2">Tutti i titoli</h2>

                        <article>
                            <div class="boxListino">

                                <h3 id="title" class="titoloListino"> ${videogioco.getTitolo()}</h3>
                                
                                <div id="imgGame">
                                    <img title ="${videogioco.getTitolo()}" alt="Foto del gioco di ${videogioco.getTitolo()}" src="${videogioco.getUrl_Foto()}" width="414" height="246" class="immagineGioco" >
                                </div>
                                
                                <div class="infoGioco">
                                    <div id="gen"><b>Genere:</b> ${videogioco.getGenere()}</div>

                                    <div id="plot"><b>Trama:</b> ${videogioco.getDescrizione()}</div>

                                    <div id="price"><b>Prezzo:</b> ${videogioco.getPrezzo()} € </div>

                                    <div id="producer"><b>Produttore:</b> ${videogioco.getNome_Produttore()}</div>

                                    <div id="date"><b>Data di Rilascio:</b> ${videogioco.getData_Di_Rilascio()}</div>
                                    
                                    <div id="addedBy"><b>Inserito da:</b> ${videogioco.getUtente_id()}</div>
                                </div>
                                
                                <h4 class="titoloh4">Requisiti di Sistema:</h4>
                                <div class="tabella">
                                    <table>
                                        <tr>             
                                            <th></th>
                                            <th>Minimi:</th>      
                                            <th>Consigliati:</th>
                                        </tr>
                                        <tr>
                                            <td><b>Sistema operativo:</b></td>
                                            <td id="soM">${videogioco.getSistema_Operativo_Min()}</td>  
                                            <td id="soC">${videogioco.getSistema_Operativo_Cons()}</td>
                                        </tr>
                                        <tr>
                                            <td><b>Processore: </b></td>
                                            <td id="proc_min">${videogioco.getProcessore_Min()}</td>
                                            <td id="proc_cons"> ${videogioco.getProcessore_Cons()}</td>
                                        </tr>
                                        <tr>
                                            <td><b>Memoria:</b></td>
                                            <td id="mem_min">${videogioco.getMemoria_Min()} di RAM </td>
                                            <td id="mem_cons">${videogioco.getMemoria_Cons()} di RAM </td>
                                        </tr>
                                        <tr>
                                            <td><b>Scheda Video: </b></td>
                                            <td id="vid_min">${videogioco.getScheda_Video_Min()}</td>
                                            <td id="vid_cons">${videogioco.getScheda_Video_Cons()}</td>
                                        </tr>
                                    </table>
                                </div>

                                <div>
                                    <button id="prevReview"><img src="img/Prev.png" width="80" height="80" alt="Gioco precedente"/> </button>
                                    <button id="nextReview"> <img src="img/Next.png" width="80" height="80" alt="Gioco successivo"/> </button>
                                </div>

                            </div>

                        </article>

                        <a href ="#bookmark1"> <b>Torna su!</b></a>
                    </div>  
                </div>
                                        
                <%@ include file="pubblicita2.jsp" %>
                <%@ include file="footer.jsp" %>

                <script type ="text/javascript" src="js/dimensioneFont.js"></script><!-- <script type ="text/javascript" src="js/dimensioneFont.js"></script> -->
                <script type ="text/javascript" src="js/videogiocoCode.js"></script>

            </body>
        </c:if>
    </c:if>
</html>

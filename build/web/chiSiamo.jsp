

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
    <body>
        
        <%@ include file="header.jsp" %>
        
        <nav>
            <div>
                <ul>
                    <li><a href="index.jsp" >Home</a></li>
                    <li><a href ="nuovoProdotto.jsp"> Nuovo Videogame</a></li>
                    <li><a href ="listinoVideogiochi.jsp"> Listino Videogiochi </a></li>
                    <li><a href ="chiSiamo.jsp" class="active"> Chi siamo</a></li>
                    <li><a href ="login.jsp"> Login </a></li>
                </ul>
            </div>
        </nav>

        <br>
        
        <div class="col-3 col-s-3">

            <%@ include file="pubblicita1.jsp" %>

            <div id ="contenutoPrincipale">

                <h2 id="titoloh2"> Chi siamo </h2>
                
                <article>
                    
                    <div class="presentazione">
                        GameSociety è un gruppo di giovani appassionati dei videogames e di EA Sports. In questa pagina ci presenteremo:
                    </div>
                    
                    <section>
                        <div class="boxChiSiamo">
                            <img title = "EricaCorda" alt= "Erica Corda" src="img/EricaCorda.jpg" width="300" height="300" class="immagineChiSiamo"> <br>
                            <div class="infoChiSiamo">  
                                <h3 class="titoloChiSiamo"> Erica Corda</h3> Nata nel 2001, sin da piccola appassionata ai videogame grazie all'influenza del padre, decide di 
                                fondare assieme ai suoi colleghi universitari un'azienda che si occupa di vendere la cosa che le piace di più.
                            </div>   
                        </div>
                    </section>
                    
                    <section>
                        <div class="boxChiSiamo">
                            <img title = "MatteoDessì" alt= "Matteo Dessì" src="img/MatteoDessi.jpg" width="300" height="300" class="immagineChiSiamo" > <br>
                            <div class="infoChiSiamo"> 
                                <h3 class="titoloChiSiamo"> Matteo Dessì </h3>Nato nel 1998, insieme ai suoi compagni fonda il famoso sito Games Society. Amici da una vita e poi in seguito colleghi Universitari,
                                si ritrovano a condividere la stessa passione per il mondo videoludico. Contraddistinto grazie ai suoi pregi come affidabilità e propensione al lavoro di
                                gruppo. Costruisce giorno dopo giorno, insieme ai suoi colleghi di lavoro, una'azienda il cui scopo principale è soddisfare i clienti.
                            </div>
                        </div>        
                    </section>   
                    
                    <section>
                        <div class="boxChiSiamo">
                            <img title = "ChiaraGanga" alt= "Chiara Ganga" src="img/ChiaraGanga.jpg" width="300" height="300" class="immagineChiSiamo"> <br>
                            <div class="infoChiSiamo">
                                 <h3 class="titoloChiSiamo"> Chiara Ganga </h3> 
                                Classe 1998, co-fondatrice di Game Society. Si occupa di testare ogni prodotto presente all’interno del sito,
                                per garantire una giusta esperienza di vendita e offrire il migliore servizio possibile ai clienti. Amante delle sfide e dei videogiochi
                                fin dai primissimi tempi, è stata da subito favorevole a buttarsi a capofitto in questa nuova avventura con i suoi colleghi e amici.
                            </div>
                        </div>
                    </section>

                    <section>
                        <div class="boxChiSiamo">
                            <img title = "StefanoFigus" alt= "Stefano Figus" src="img/StefanoFigus.jpg" width="300" height="300" class="immagineChiSiamo" > <br>
                            <div class="infoChiSiamo">   
                                <h3 class="titoloChiSiamo"> Stefano Figus</h3>
                                Nato nel 2001 e da sempre interessato al mondo dei videogiochi, coglie al volo l'opportunità di entrare a
                                far parte del team di GameSociety insieme ai suoi collegi e amici, fornendo le sue competenze relazionali ed informatiche.
                            </div>
                        </div>
                    </section>

                </article>

            </div>
        </div>
        <%@ include file="pubblicita2.jsp" %>
        <%@ include file="footer.jsp" %>
        
        <script type ="text/javascript" src="js/dimensioneFont.js"></script>
    </body>
</html>

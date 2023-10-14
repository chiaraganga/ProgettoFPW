<%-- 
    Document   : login
    Created on : 31 mag 2022, 09:46:48
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
                
                <c:choose>
                    <c:when test="${not empty user}">
                        <div class="boxPresentazionePrincipale">
                            <h2 id="titoloh2"> Vuoi già uscire?</h2>
                            <div class="infoPagPrincipale">
                                <form action="logout" method="get" id="form">
                                    <input type="submit" value="Logout">
                                </form>
                            </div>
                        </div>
                    </c:when>
                    
                    <c:otherwise>
                        <article>
                            
                            <h2 id="titoloh2">Login</h2>
                            <form action="login" method="get" id="form">
                                <div id="inserimento">
                                    <label for="user" class="reviewDisplay" id="caratteriRimanentiUser">Nome utente:(0/20)</label>
                                    <input type="text" name="user" id="user" placeholder="Cognome" class="allineaInput"/>
                                    <br>
                                    <label for="psw" class="reviewDisplay" id="caratteriRimanentiPsw">Password:(0/5)</label>
                                    <input type="password" name="psw" id="psw" placeholder="Password" class="allineaInput"/>
                                    <br>
                                    <input type="submit" value="Login">
                                </div>
                            </form>
                            
                        </article>

                        <article>
                            
                            <h2 id="titoloh2">Nuova Registrazione</h2>
                            <form action="newReg" method="get" id="form">
                                <div id="inserimento">
                                    <label for="email" class="reviewDisplay" id="caratteriRimanentiEmail">E-mail(0/30)</label>
                                    <input type="text" name="email" id="email" placeholder="nome@mail.com" class="allineaInput"/>
                                    <br>
                                    <label for="usename" class="reviewDisplay" id="caratteriRimanentiUsername">Username:(0/20) </label>
                                    <input type="text" name="username" id="username" placeholder="Username" class="allineaInput"/>
                                    <br>
                                    <label for="user" class="reviewDisplay" id="caratteriRimanentiNome">Nome:(0/15)</label>
                                    <input type="text" name="nome" id="nome" placeholder="Nome" class="allineaInput"/>
                                    <br>
                                    <label for="user" class="reviewDisplay" id="caratteriRimanentiCognome">Cognome:(0/20) </label>
                                    <input type="text" name="cognome" id="cognome" placeholder="Cognome" class="allineaInput"/>
                                    <br>
                                    <label for="psw" class="reviewDisplay" id="caratteriRimanentiPassword">Password:(0/5)</label>
                                    <input type="password" name="passw" id="passw" placeholder="Password" class="allineaInput"/>
                                    <br>
                                    <label for="citta" class="reviewDisplay" id="caratteriRimanentiCitta">Città:(0/30)</label>
                                    <input type="text" name="citta" id="citta" placeholder="Città" class="allineaInput"/>
                                    <br>
                                    <input type="submit" value="newReg">
                                </div>
                            </form>
                            
                        </article>
                        
                    </c:otherwise>    
                </c:choose>
            </div>
        </div>
            
        <%@ include file="pubblicita2.jsp" %>
        <%@ include file="footer.jsp" %>
        
        <script type ="text/javascript" src="js/code.js"></script>
        <script type ="text/javascript" src="js/dimensioneFont.js"></script>
    </body>
</html>
/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function insertAfter(newNode, referenceNode) {
    referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
}

$('#user').keyup(function () {
    $(' #caratteriRimanentiUser').text("Nome utente:(" + $(this).val().length + "/20)");

});

$('#psw').keyup(function () {
    $('#caratteriRimanentiPsw').text("Password:(" + $(this).val().length + "/5)");
});

$('#email').keyup(function () {
    $('#caratteriRimanentiEmail').text("Email:(" + $(this).val().length + "/30)");
});

$('#username').keyup(function () {
    $('#caratteriRimanentiUsername').text("Username:(" + $(this).val().length + "/20)");
});

$('#nome').keyup(function () {
    $('#caratteriRimanentiNome').text("Nome:(" + $(this).val().length + "/15)");
});

$('#cognome').keyup(function () {
    $('#caratteriRimanentiCognome').text("Cognome:(" + $(this).val().length + "/20)");
});

$('#citta').keyup(function () {
    $('#caratteriRimanentiCitta').text("Città:(" + $(this).val().length + "/30)");
});

$('#passw').keyup(function () {
    $('#caratteriRimanentiPassword').text("Password:(" + $(this).val().length + "/5)");
});

document.getElementById('user').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 20)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('psw').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 5)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('passw').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 5)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('email').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 30)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('nome').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 15)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('cognome').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 20)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};


document.getElementById('citta').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 30)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};


document.getElementById('username').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 20)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};


var user = document.getElementById("user");
var avviso = document.createElement("p");
avviso.id = "messaggioErroreUser";
var testo = document.createTextNode("Username non composto solo da lettere!");
avviso.appendChild(testo);


function controllaUsername() {
    if (!(user.value.match(/^[A-Za-z " "]+$/))) {
        insertAfter(avviso, user);
    } else {
        document.getElementById("messaggioErroreUser").remove();
    }
}
user.onchange = controllaUsername;


var psw = document.getElementById("psw");
var avvisoPw = document.createElement("p");
avvisoPw.id = "messaggioErrorePass";
var testoPw = document.createTextNode("Password non composta solo da numeri!");
avvisoPw.appendChild(testoPw);

function controllaPassword() {
    if (!(psw.value.match(/^[0-9]/))) {
        insertAfter(avvisoPw, psw);
    } else {
        document.getElementById("messaggioErrorePass").remove();
    }
}
psw.onchange = controllaPassword;


var email = document.getElementById('email');
var avvisoEmail = document.createElement("p");
avvisoEmail.id = "messaggioErroreEmail";
var testoEmail = document.createTextNode("Email non valida!");
avvisoEmail.appendChild(testoEmail);

function controllaEmail() {
    if (!email.value.includes("@" && ".")) {
        insertAfter(avvisoEmail, email);
    } else {
        document.getElementById("messaggioErroreEmail").remove();
    }
}
email.onchange = controllaEmail;


var userReg = document.getElementById('username');
var avvisoUserReg = document.createElement("p");
avvisoUserReg.id = "messaggioErroreUsername";
var testoUserReg = document.createTextNode("Username non composto solo da lettere!");
avvisoUserReg.appendChild(testoUserReg);

function controllaUsernameReg() {
    if (!(userReg.value.match(/^[A-Za-z]+$/))) {
        insertAfter(avvisoUserReg, userReg);
    } else {
        document.getElementById("messaggioErroreUsername").remove();
    }
}
userReg.onchange = controllaUsernameReg;


var pswReg = document.getElementById('passw');
var avvisoPwReg = document.createElement("p");
avvisoPwReg.id = "messaggioErrorePassw";
var testoPwReg = document.createTextNode("La password deve essere composta solo da numeri!");
avvisoPwReg.appendChild(testoPwReg);

function controllaPasswordReg() {
    if (!(pswReg.value.match(/^[0-9]+$/))) {
        insertAfter(avvisoPwReg, pswReg);
    } else {
        document.getElementById("messaggioErrorePassw").remove();
    }
}
pswReg.onchange = controllaPasswordReg;


var nomeReg = document.getElementById('nome');
var avvisoNomeReg = document.createElement("p");
avvisoNomeReg.id = "messaggioErroreNome";
var testoNomeReg = document.createTextNode("Nome non composto solo da lettere!");
avvisoNomeReg.appendChild(testoNomeReg);

function controllaNomeReg() {
    if (!(nomeReg.value.match(/^[A-Za-z " "]+$/))) {
        insertAfter(avvisoNomeReg, nomeReg);
    } else {
        document.getElementById("messaggioErroreNome").remove();
    }
}
nomeReg.onchange = controllaNomeReg;

var cognomeReg = document.getElementById('cognome');
var avvisoCognomeReg = document.createElement("p");
avvisoCognomeReg.id = "messaggioErroreCognome";
var testoCognomeReg = document.createTextNode("Cognome non composto solo da lettere!");
avvisoCognomeReg.appendChild(testoCognomeReg);

function controllaCognomeReg() {
    if (!(cognomeReg.value.match(/^[A-Za-z " "]+$/))) {
        insertAfter(avvisoCognomeReg, cognomeReg);
    } else {
        document.getElementById("messaggioErroreCognome").remove();
    }
}
cognomeReg.onchange = controllaCognomeReg;


var cittaReg = document.getElementById('citta');
var avvisoCittaReg = document.createElement("p");
avvisoCittaReg.id = "messaggioErroreCitta";
var testoCittaReg = document.createTextNode("Città non composta solo da lettere!");
avvisoCittaReg.appendChild(testoCittaReg);

function controllaCitta() {
    if (!(cittaReg.value.match(/^[A-Za-z " "]+$/))) {
        insertAfter(avvisoCittaReg, cittaReg);
    } else {
        document.getElementById("messaggioErroreCitta").remove();
    }
}
cittaReg.onchange = controllaCitta;





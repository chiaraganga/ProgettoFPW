/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function insertAfter(newNode, referenceNode) {
    referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
}


$('#titoloForm').keyup(function () {
    $(' #caratteriRimanentiTitolo').html("Titolo:(" + $(this).val().length + "/30)");

});


$('#genere').keyup(function () {
    $(' #caratteriRimanentiGenere').html("<br>Genere:(" + $(this).val().length + "/20)");

});

$('#descrizione').keyup(function () {
    $(' #caratteriRimanenti').html("<br>Descrizione (Trama):(" + $(this).val().length + "/500)");

});


$('#produttore').keyup(function () {
    $(' #caratteriRimanentiProduttore').html("<br>Produttore:(" + $(this).val().length + "/15)");

});


$('#osM').keyup(function () {
    $(' #caratteriRimanentiOsm').html("<br>Sistema operativo:(" + $(this).val().length + "/40)");

});



$('#cpuM').keyup(function () {
    $(' #caratteriRimanentiCpuM').html("<br>Processore:(" + $(this).val().length + "/40)");

});

$('#gpuM').keyup(function () {
    $(' #caratteriRimanentiGpuM').html("<br>Scheda video:(" + $(this).val().length + "/40)");

});


$('#osC').keyup(function () {
    $(' #caratteriRimanentiOsc').html("<br>Sistema operativo:(" + $(this).val().length + "/40)");

});



$('#cpuC').keyup(function () {
    $(' #caratteriRimanentiCpuC').html("<br>Processore:(" + $(this).val().length + "/40)");

});


$('#gpuC').keyup(function () {
    $(' #caratteriRimanentiGpuC').html("<br>Scheda video:(" + $(this).val().length + "/40)");

});

document.getElementById('titoloForm').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 30)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('genere').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 20)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('descrizione').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 500)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('produttore').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 15)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('osM').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 40)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('cpuM').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 40)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('gpuM').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 40)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('osC').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 40)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('cpuC').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 40)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

document.getElementById('gpuC').onkeydown = function (e) {
    var key = e.keyCode || e.charCode;
    if (this.value.length >= 40)
        if (!(key === 46 || key === 8))
            e.preventDefault();
};

var titolo = document.getElementById('titoloForm');
var avvisoTitolo = document.createElement("p");
avvisoTitolo.id = "messaggioErroreTitolo";
var testoTitolo = document.createTextNode("Titolo del gioco non deve avere caratteri speciali!");
avvisoTitolo.appendChild(testoTitolo);

function controllaTitolo() {
    if (!(titolo.value.match(/^[A-Za-z0-9 " "]+$/))) {
        insertAfter(avvisoTitolo, titolo);
    } else {
        document.getElementById("messaggioErroreTitolo").remove();
    }
}
titolo.onchange = controllaTitolo;

var genere = document.getElementById('genere');
var avvisoGenere = document.createElement("p");
avvisoGenere.id = "messaggioErroreGenere";
var testoGenere = document.createTextNode("Genere del gioco non composto solo da lettere!");
avvisoGenere.appendChild(testoGenere);

function controllaGenere() {
    if (!(genere.value.match(/^[A-Za-z " "]+$/))) {
        insertAfter(avvisoGenere, genere);
    } else {
        document.getElementById("messaggioErroreGenere").remove();
    }
}
genere.onchange = controllaGenere;

var sistemaOsm = document.getElementById('osM');
var avvisoOsm = document.createElement("p");
avvisoOsm.id = "messaggioErroreOsm";
var testoOsm = document.createTextNode("Sistema operativo non deve avere caratteri speciali!");
avvisoOsm.appendChild(testoOsm);

function controllaOsm() {
    if (!(sistemaOsm.value.match(/^[A-Za-z0-9 " "]+$/))) {
        insertAfter(avvisoOsm, sistemaOsm);
    } else {
        document.getElementById("messaggioErroreOsm").remove();
    }
}
sistemaOsm.onchange = controllaOsm;


var cpuM = document.getElementById('cpuM');
var avvisoCpuM = document.createElement("p");
avvisoCpuM.id = "messaggioErroreCpuM";
var testoCpuM = document.createTextNode("CPU non deve avere caratteri speciali!");
avvisoCpuM.appendChild(testoCpuM);

function controllaCpuM() {
    if (!(cpuM.value.match(/^[A-Za-z0-9 " "]+$/))) {
        insertAfter(avvisoCpuM, cpuM);
    } else {
        document.getElementById("messaggioErroreCpuM").remove();
    }
}
cpuM.onchange = controllaCpuM;


var ramM = document.getElementById('ramM');
var avvisoRamM = document.createElement("p");
avvisoRamM.id = "messaggioErroreRamM";
var testoRamM = document.createTextNode("RAM deve essere un valore intero!");
avvisoRamM.appendChild(testoRamM);

function controllaRamM() {
    if (!(ramM.value.match(/^[0-9 " "]+$/))) {
        insertAfter(avvisoRamM, ramM);
    } else {
        document.getElementById("messaggioErroreRamM").remove();
    }
}
ramM.onchange = controllaRamM;

var gpuM = document.getElementById('gpuM');
var avvisoGpuM = document.createElement("p");
avvisoGpuM.id = "messaggioErroreGpuM";
var testoGpuM = document.createTextNode("GPU non deve avere caratteri speciali!");
avvisoGpuM.appendChild(testoGpuM);

function controllaGpuM() {
    if (!(gpuM.value.match(/^[A-Za-z0-9 " "]+$/))) {
        insertAfter(avvisoGpuM, gpuM);
    } else {
        document.getElementById("messaggioErroreGpuM").remove();
    }
}
gpuM.onchange = controllaGpuM;


var sistemaOsc = document.getElementById('osC');
var avvisoOsc = document.createElement("p");
avvisoOsc.id = "messaggioErroreOsc";
var testoOsc = document.createTextNode("Sistema operativo non deve avere caratteri speciali!");
avvisoOsc.appendChild(testoOsc);

function controllaOsc() {
    if (!(sistemaOsc.value.match(/^[A-Za-z0-9 " "]+$/))) {
        insertAfter(avvisoOsc, sistemaOsc);
    } else {
        document.getElementById("messaggioErroreOsc").remove();
    }
}
sistemaOsc.onchange = controllaOsc;


var cpuC = document.getElementById('cpuC');
var avvisoCpuC = document.createElement("p");
avvisoCpuC.id = "messaggioErroreCpuC";
var testoCpuC = document.createTextNode("CPU non deve avere caratteri speciali!");
avvisoCpuC.appendChild(testoCpuC);

function controllaCpuC() {
    if (!(cpuC.value.match(/^[A-Za-z0-9 " "]+$/))) {
        insertAfter(avvisoCpuC, cpuC);
    } else {
        document.getElementById("messaggioErroreCpuC").remove();
    }
}
cpuC.onchange = controllaCpuC;


var ramC = document.getElementById('ramC');
var avvisoRamC = document.createElement("p");
avvisoRamC.id = "messaggioErroreRamC";
var testoRamC = document.createTextNode("RAM deve essere un valore intero!");
avvisoRamC.appendChild(testoRamC);

function controllaRamC() {
    if (!(ramC.value.match(/^[0-9 " "]+$/))) {
        insertAfter(avvisoRamC, ramC);
    } else {
        document.getElementById("messaggioErroreRamC").remove();
    }
}
ramC.onchange = controllaRamC;



var gpuC = document.getElementById('gpuC');
var avvisoGpuC = document.createElement("p");
avvisoGpuC.id = "messaggioErroreGpuC";
var testoGpuC = document.createTextNode("GPU non deve avere caratteri speciali!");
avvisoGpuC.appendChild(testoGpuC);

function controllaGpuC() {
    if (!(gpuC.value.match(/^[A-Za-z0-9 " "]+$/))) {
        insertAfter(avvisoGpuC, gpuC);
    } else {
        document.getElementById("messaggioErroreGpuC").remove();
    }
}
gpuC.onchange = controllaGpuC;
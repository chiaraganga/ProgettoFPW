/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

var offset = 0;

$('#nextReview').click(function () {

    offset++;
    $.ajax({
        url: "listinoVideogiochi",
        data: {
            offsetId: offset
        },
        dataType: "json",
        success: function (data, state) {
            if (data.titoloForm === "")
            {
                offset--;
            } else
                aggiornaVideogioco(data);
        },
        error: function (data, state) {
        }
    });
});

$('#prevReview').click(function () {
    if (offset > 0)
        offset--;
    $.ajax({
        url: "listinoVideogiochi",
        data: {
            offsetId: offset
        },
        dataType: "json",
        success: function (data, state) {
            aggiornaVideogioco(data);
        },
        error: function (data, state) {
        }
    });
});


function aggiornaVideogioco(videogioco) {
    $("#title").text(videogioco.titoloForm);
    $("#gen").html(" <b> Genere: </b>" + videogioco.genere);
    $("#plot").html("<b> Descrizione: </b>" + videogioco.descrizione);
    $("#imgGame").html("<img title = " + "\"" + videogioco.titoloForm + "\"" + " alt=" + " \"Foto del gioco di " + videogioco.titoloForm + "\"" + " src=" + videogioco.copertina + " width=\"414\" height=\"246\" class=\"immagineGioco\"  >");
    $("#price").html("<b> Prezzo: </b>" + videogioco.prezzo + '€');
    $("#producer").html("<b> Produttore: </b>" + videogioco.produttore);
    $("#date").html("<b> Data di rilascio: </b>" + videogioco.rilascio);
    $("#addedBy").html("<b> Inserito da: </b>" + videogioco.inseritoDa);
    $("#soM").text(videogioco.osM);
    $("#soC").text(videogioco.osC);
    $("#proc_min").text(videogioco.cpuM);
    $("#proc_cons").text(videogioco.cpuC);
    $("#mem_min").text(videogioco.ramM);
    $("#mem_cons").text(videogioco.ramC + '  di RAM ');
    $("#vid_min").text(videogioco.gpuM);
    $("#vid_cons").text(videogioco.gpuC);
}
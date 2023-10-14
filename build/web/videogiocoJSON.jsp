<%-- 
    Document   : videogiocoJSON
    Created on : 27 giu 2022, 10:48:42
    Author     : matte
--%>

<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@taglib prefix="json" uri="http://www.atg.com/taglibs/json"%>

<json:object>
    <json:property name="titoloForm" value="${videogioco.getTitolo()}"/>
    <json:property name="genere" value="${videogioco.getGenere()}"/>
    <json:property name="descrizione" value="${videogioco.getDescrizione()}"/>
    <json:property name="copertina" value="${videogioco.getUrl_Foto()}"/>
    <json:property name="prezzo" value="${videogioco.getPrezzo()}"/>
    <json:property name="produttore" value="${videogioco.getNome_Produttore()}"/>
    <json:property name="rilascio" value="${videogioco.getData_Di_Rilascio()}"/>
    <json:property name="inseritoDa" value="${videogioco.getUtente_id()}"/>
    <json:property name="osM" value="${videogioco.getSistema_Operativo_Min()}"/>
    <json:property name="cpuM" value="${videogioco.getProcessore_Min()}"/>
    <json:property name="raM" value="${videogioco.getMemoria_Min()}"/>
    <json:property name="gpuM" value="${videogioco.getScheda_Video_Min()}"/>
    <json:property name="osC" value="${videogioco.getSistema_Operativo_Cons()}"/>
    <json:property name="cpuC" value="${videogioco.getProcessore_Cons()}"/>
    <json:property name="ramC" value="${videogioco.getMemoria_Cons()}"/>
    <json:property name="gpuC" value="${videogioco.getScheda_Video_Cons()}"/>
</json:object>

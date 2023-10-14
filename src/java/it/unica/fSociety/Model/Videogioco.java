/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.unica.fSociety.Model;
import java.sql.Date;

public class Videogioco {
    private String titolo;
    private String genere;
    private String descrizione;
    private String url_Foto;
    private Float prezzo;
    private String nome_Produttore;
    private Date data_Di_Rilascio;
    
    private String sistema_Operativo_Min;
    private String processore_Min;
    private Integer memoria_Min;
    private String scheda_Video_Min;
    
    private String sistema_Operativo_Cons;
    private String processore_Cons;
    private Integer memoria_Cons;
    private String scheda_Video_Cons;
    private String utente_id;
    
    public Videogioco(){}

    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public String getGenere() {
        return genere;
    }

    public void setGenere(String genere) {
        this.genere = genere;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public String getUrl_Foto() {
        return url_Foto;
    }

    public void setUrl_Foto(String url_Foto) {
        this.url_Foto = url_Foto;
    }

    public Float getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(Float prezzo) {
        this.prezzo = prezzo;
    }

    public String getNome_Produttore() {
        return nome_Produttore;
    }

    public void setNome_Produttore(String nome_Produttore) {
        this.nome_Produttore = nome_Produttore;
    }

    public Date getData_Di_Rilascio() {
        return data_Di_Rilascio;
    }

    public void setData_Di_Rilascio(Date data_Di_Rilascio) {
        this.data_Di_Rilascio = data_Di_Rilascio;
    }

   
    public String getSistema_Operativo_Min() {
        return sistema_Operativo_Min;
    }

    public void setSistema_Operativo_Min(String sistema_Operativo_Min) {
        this.sistema_Operativo_Min = sistema_Operativo_Min;
    }

    public String getProcessore_Min() {
        return processore_Min;
    }

    public void setProcessore_Min(String processore_Min) {
        this.processore_Min = processore_Min;
    }

    public Integer getMemoria_Min() {
        return memoria_Min;
    }

    public void setMemoria_Min(Integer memoria_Min) {
        this.memoria_Min = memoria_Min;
    }

    public String getScheda_Video_Min() {
        return scheda_Video_Min;
    }

    public void setScheda_Video_Min(String scheda_Video_Min) {
        this.scheda_Video_Min = scheda_Video_Min;
    }

    public String getSistema_Operativo_Cons() {
        return sistema_Operativo_Cons;
    }

    public void setSistema_Operativo_Cons(String sistema_Operativo_Cons) {
        this.sistema_Operativo_Cons = sistema_Operativo_Cons;
    }

    public String getProcessore_Cons() {
        return processore_Cons;
    }

    public void setProcessore_Cons(String processore_Cons) {
        this.processore_Cons = processore_Cons;
    }

    public Integer getMemoria_Cons() {
        return memoria_Cons;
    }

    public void setMemoria_Cons(Integer memoria_Cons) {
        this.memoria_Cons = memoria_Cons;
    }

    public String getScheda_Video_Cons() {
        return scheda_Video_Cons;
    }

    public void setScheda_Video_Cons(String scheda_Video_Cons) {
        this.scheda_Video_Cons = scheda_Video_Cons;
    }

    public String getUtente_id() {
        return utente_id;
    }

    public void setUtente_id(String utente_id) {
        this.utente_id = utente_id;
    }
    
}

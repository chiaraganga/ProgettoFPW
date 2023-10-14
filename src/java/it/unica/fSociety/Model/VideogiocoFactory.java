/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.unica.fSociety.Model;

import it.unica.fSociety.Database.DatabaseManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class VideogiocoFactory {

    private static VideogiocoFactory instance;
    
    private VideogiocoFactory(){}
    
    public static VideogiocoFactory getInstance(){
         if(instance== null)
            instance= new VideogiocoFactory();
        return instance;
    }
    
     public Videogioco getVideogioco(String offset) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet set = null;
        Videogioco videogioco = new Videogioco();

        try {
            conn = DatabaseManager.getInstance().getDbConnection();
            String query = "SELECT * FROM videogioco LIMIT 1 OFFSET ?";
            stmt = conn.prepareStatement(query);
            stmt.setInt(1, Integer.parseInt(offset));
            set = stmt.executeQuery();
            while (set.next()) {
                videogioco.setTitolo(set.getString("titolo"));
                videogioco.setGenere(set.getString("genere"));
                videogioco.setDescrizione(set.getString("descrizione"));
                videogioco.setUrl_Foto(set.getString("url_Foto"));
                videogioco.setPrezzo(set.getFloat("prezzo"));
                videogioco.setNome_Produttore(set.getString("nome_Produttore"));     
                videogioco.setData_Di_Rilascio(set.getDate("data_Di_Rilascio"));
                videogioco.setUtente_id(set.getString("utente_id"));
                videogioco.setSistema_Operativo_Min(set.getString("sistema_Operativo_min"));
                videogioco.setProcessore_Min(set.getString("processore_Min"));
                videogioco.setMemoria_Min(set.getInt("memoria_Min"));
                videogioco.setScheda_Video_Min(set.getString("scheda_Video_Min"));

                videogioco.setSistema_Operativo_Cons(set.getString("sistema_Operativo_cons"));
                videogioco.setProcessore_Cons(set.getString("processore_cons"));
                videogioco.setMemoria_Cons(set.getInt("memoria_Cons"));
                videogioco.setScheda_Video_Cons(set.getString("scheda_Video_Cons"));


            }
            return videogioco;
        } catch (SQLException e) {
                Logger.getLogger(VideogiocoFactory.class.getName()).log(Level.SEVERE, null, e);
        } finally {
                try {set.close();   } catch (Exception e) {}
                try {stmt.close();   } catch (Exception e) {}
                try {conn.close();   } catch (Exception e) {}
            }
        return null;
    }
}


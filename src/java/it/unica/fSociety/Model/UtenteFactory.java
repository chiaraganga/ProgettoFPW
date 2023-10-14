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

public class UtenteFactory {

    private static UtenteFactory instance;

    private UtenteFactory() {
    }

    public static UtenteFactory getInstance() {
        if (instance == null) {
            instance = new UtenteFactory();
        }
        return instance;
    }

    public Utente getUtenteByUsernamePassword(String username, String password) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet set = null;

        try {
            conn = DatabaseManager.getInstance().getDbConnection();

            String query = "SELECT * FROM Utente WHERE username = ? AND passw = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password);

            set = stmt.executeQuery();

            if (set.next()) {
                Utente utente = new Utente();
                utente.setUsername(set.getString("username"));
                utente.setPassw(set.getString("passw"));
                utente.setNome(set.getString("nome"));
                utente.setCognome(set.getString("cognome"));
                utente.setEmail(set.getString("email"));
                utente.setCitta(set.getString("città"));
                return utente;
            } else {
                return null;
            }

        } catch (SQLException e) {
            Logger.getLogger(UtenteFactory.class.getName()).
                    log(Level.SEVERE, null, e);

        } finally {
            try {
                set.close();
            } catch (Exception e) {
            }
            try {
                stmt.close();
            } catch (Exception e) {
            }
            try {
                conn.close();
            } catch (Exception e) {
            }
        }
        return null;

    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package it.unica.fSociety.Servlet;

import java.sql.Connection;
import it.unica.fSociety.Database.DatabaseManager;
import it.unica.fSociety.Exception.InvalidParamException;
import it.unica.fSociety.Utils.Utils;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "NuovaRegistrazioneServlet", urlPatterns = {"/newReg"})
public class NuovaRegistrazioneServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet set = null;

        String emailUtente = request.getParameter("email");
        String nomeUtente = request.getParameter("nome");
        String cognomeUtente = request.getParameter("cognome");
        String password = request.getParameter("passw");
        String citta = request.getParameter("citta");
        String username = request.getParameter("username");

        try {

            Utils.checkString20(username, "username");
            Utils.checkString30(emailUtente, "email");
            Utils.checkString15(nomeUtente, "nome");
            Utils.checkString20(cognomeUtente, "cognome");
            Utils.checkInteger(password);
            Utils.checkString30(citta, "citta");

            request.getRequestDispatcher("successoRegistrazione.jsp").forward(request, response);

            conn = DatabaseManager.getInstance().getDbConnection();

            String query = "INSERT INTO utente(id, username, passw, email, nome, cognome,città) VALUES (default,?,?,?,?,?,?)";
            stmt = conn.prepareStatement(query);

            stmt.setString(1, username);
            stmt.setString(2, password);
            stmt.setString(3, emailUtente);
            stmt.setString(4, nomeUtente);
            stmt.setString(5, cognomeUtente);
            stmt.setString(6, citta);
            

            set = stmt.executeQuery();

            stmt.close();
            conn.close();

        } catch (SQLException e) {
            Logger.getLogger(NuovaRegistrazioneServlet.class.getName()).
                    log(Level.SEVERE, null, e);
        } catch (InvalidParamException e) {
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
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
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

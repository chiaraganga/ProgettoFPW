/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package it.unica.fSociety.Servlet;

import it.unica.fSociety.Database.DatabaseManager;
import it.unica.fSociety.Exception.InvalidParamException;
import it.unica.fSociety.Utils.Utils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.time.LocalDate;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.InputStream;
import java.io.File;
import java.nio.file.*;
import javax.servlet.annotation.*;

@WebServlet(name = "NuovoProdotto", urlPatterns = {"/inserimentoProdotto"})
@MultipartConfig
public class NuovoProdottoServlet extends HttpServlet {

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

        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("user") != null) {

            String titolo = request.getParameter("titolo");
            String genere = request.getParameter("genere");
            String descrizione = request.getParameter("descrizione");
            Part file = request.getPart("immagine");
            String prezzo = request.getParameter("prezzo");
            String produttore = request.getParameter("produttore");
            String rilascio = request.getParameter("rilascio");

            String so = request.getParameter("os");
            String cpu = request.getParameter("cpu");
            String ram = request.getParameter("ram");
            String schedaVideo = request.getParameter("sv");

            String soCons = request.getParameter("osC");
            String cpuCons = request.getParameter("cpuC");
            String ramCons = request.getParameter("ramC");
            String schedaVideoCons = request.getParameter("svC");

            try(InputStream contenutoFile = file.getInputStream();) {
                
                File daSalvare = new File("/Users/chiaraganga/Desktop/FPW/FSY/fSociety/web/uploads/" + file.getSubmittedFileName());

                Files.copy(contenutoFile, daSalvare.toPath(), StandardCopyOption.REPLACE_EXISTING);

                String URL = "uploads/" + file.getSubmittedFileName();

                Utils.checkString30(titolo, "titolo");
                Utils.checkString20(genere, "genere");
                Utils.checkDescription(descrizione);
              
                Utils.checkPrice(prezzo);
                Utils.checkString15(produttore, "produttore");
                Utils.checkDate(rilascio);

                Utils.checkString40(so, "os");
                Utils.checkString40(cpu, "cpu");
                Utils.checkRam(ram);
                Utils.checkString40(schedaVideo, "sv");

                Utils.checkString40(soCons, "osC");
                Utils.checkString40(cpuCons, "cpuC");
                Utils.checkRam(ramCons);
                Utils.checkString40(schedaVideoCons, "svC");

                LocalDate rilascio2 = LocalDate.parse(rilascio);

                request.getRequestDispatcher("successo.jsp").forward(request, response);

                conn = DatabaseManager.getInstance().getDbConnection();

                String query = "INSERT INTO videogioco(id, titolo,genere,descrizione, url_Foto, prezzo, nome_Produttore, data_Di_Rilascio, sistema_Operativo_Min,  processore_Min, memoria_Min,scheda_Video_Min,sistema_Operativo_Cons,  processore_Cons, memoria_Cons, scheda_Video_Cons,utente_id) VALUES (default,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                stmt = conn.prepareStatement(query);

                stmt.setString(1, titolo);
                stmt.setString(2, genere);
                stmt.setString(3, descrizione);
                stmt.setString(4, URL);
                stmt.setString(5, prezzo);
                stmt.setString(6, produttore);

                Date rilascio3 = Date.valueOf(rilascio2);
                stmt.setDate(7, rilascio3);

                stmt.setString(8, so);
                stmt.setString(9, cpu);

                Integer ramInt = Integer.valueOf(ram);
                stmt.setInt(10, ramInt);

                stmt.setString(11, schedaVideo);
                stmt.setString(12, soCons);
                stmt.setString(13, cpuCons);

                Integer ramConsInt = Integer.valueOf(ramCons);
                stmt.setInt(14, ramConsInt);

                stmt.setString(15, schedaVideoCons);
                stmt.setString(16, (session.getAttribute("user")).toString());

                set = stmt.executeQuery();

                stmt.close();
                conn.close();
            }
            catch(IOException e){
                 request.setAttribute("errorMessage", "Copertina del gioco non inserita");
                request.getRequestDispatcher("errorNuovoProdotto.jsp").forward(request, response); 
            }
            catch (SQLException e) {
                Logger.getLogger(NuovoProdottoServlet.class.getName()).
                        log(Level.SEVERE, null, e);

            } catch (InvalidParamException e) {
                request.setAttribute("errorMessage", e.getMessage());
                request.getRequestDispatcher("errorNuovoProdotto.jsp").forward(request, response);
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
        } else {
            response.sendRedirect("login.jsp");
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.unica.fSociety.Utils;

import it.unica.fSociety.Exception.InvalidParamException;


public class Utils {

    public static void checkString(String param) throws InvalidParamException {

        if (param == null) {
            throw new InvalidParamException("Nome utente nullo");
        }

        if (!param.matches("[a-zA-Z]+")) {
            throw new InvalidParamException("Nome utente non valido, non contiene solo caratteri!");
        }
    }

    public static void checkInteger(String param) throws InvalidParamException {

        if (param.length() < 5 || param.length() > 5) {
            throw new InvalidParamException("La password non è composta da 5 numeri ");
        }

        try {
            int iVal = Integer.parseInt(param);

        } catch (NumberFormatException e) {
            throw new InvalidParamException("La password non è un intero");
        }

    }

    public static void checkRam(String param) throws InvalidParamException {

        if (param == null) {
            throw new InvalidParamException("La memoria è nulla ");
        }

        if (param.length() > 5) {
            throw new InvalidParamException("La ram supera il numero massimo di caratteri");
        }

        try {
            int iVal = Integer.parseInt(param);

        } catch (NumberFormatException e) {
            throw new InvalidParamException("La password non è un intero");
        }

    }

    public static void checkString30(String param, String nomeCampo) throws InvalidParamException {
        if (param.equals("")) {
            throw new InvalidParamException(nomeCampo + " nullo/a");
        }

        if (param.length() > 30) {
            throw new InvalidParamException(nomeCampo + " supera il numero massimo di caratteri");
        }
    }

    public static void checkString15(String param, String nomeCampo) throws InvalidParamException {
        if (param.equals("")) {
            throw new InvalidParamException(nomeCampo + " nullo/a");
        }

        if (param.length() > 15) {
            throw new InvalidParamException(nomeCampo + " supera il numero massimo di caratteri");
        }
    }

    public static void checkString20(String param, String nomeCampo) throws InvalidParamException {
        if (param.equals("")) {
            throw new InvalidParamException(nomeCampo + " nullo/a");
        }

        if (param.length() > 20) {
            throw new InvalidParamException(nomeCampo + " supera il numero massimo di caratteri");
        }
    }
    
      public static void checkString40(String param, String nomeCampo) throws InvalidParamException {
        if (param.equals("")) {
            throw new InvalidParamException(nomeCampo + " nullo/a");
        }

        if (param.length() > 40) {
            throw new InvalidParamException(nomeCampo + " supera il numero massimo di caratteri");
        }
    }

    public static void checkDescription(String param) throws InvalidParamException {
        if (param.equals("")) {
            throw new InvalidParamException("Descrizione nulla");
        }

        if (param.length() > 500) {
            throw new InvalidParamException("La descrizione supera il numero massimo di caratteri");
        }
    }

    public static void checkImg(String param) throws InvalidParamException {
        if ((param.equals(""))) {
            throw new InvalidParamException("Path nullo");
        }

    }

    public static void checkPrice(String param) throws InvalidParamException {
        if (param.equals("")) {
            throw new InvalidParamException("Prezzo nullo");
        }

        float price = Float.valueOf(param);
        if (price < 0) {
            throw new InvalidParamException("Il prezzo che hai inserito non è maggiore di 0");
        }

    }

    public static void checkDate(String param) throws InvalidParamException {
        if (param.equals("")) {
            throw new InvalidParamException("Data nulla");
        }
    }

}

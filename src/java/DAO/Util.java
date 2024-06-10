/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jakaria imtiaz
 */
public class Util {
public static HttpSession getSession(){
    return (HttpSession)
            FacesContext.getCurrentInstance().getExternalContext().getSession(false);
}
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;


public class Conf {


    String mes, user, pass, radd;

    public String getRadd() {
        return radd;
    }

    public void setRadd(String radd) {
        this.radd = radd;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String sss() {
        mes=null;
        if (!user.isEmpty()) {
            if (!pass.isEmpty()) {
                if (user.equals("admin") && pass.equals("123")) {
                    return "yes";

                } else {
                    if (radd.equals("1")) {
                       
     Util.getSession().setAttribute("sessionname",user);
                        try {
                            Connection con = DatabaseConnection.Database.getConnection();
                            ResultSet rs = null;
                            ResultSet rs1 = null;
                            Statement st = con.createStatement();

                            rs1 = st.executeQuery("select deptpermission from departlog where  deptname='" + user + "' and deptpass='" + pass + "' and deptpermission='"+"Yes"+"'");

                            int count1 = 0;

                            while (rs1.next()) {
                                count1++;

                            }

                            if (count1 > 0) {
                                if (user.equals("police")) {
                                    return "police";
                                } else if (user.equals("passport")) {
                                    return "passport";
                                } else if (user.equals("roadshigh")) {
                                    return "roadshigh";
                                } else if (user.equals("immigration")) {
                                    return "immigration";
                                } else {
                                    return "union";
                                }
                            } else {
                                mes = "Invalid Login";
                                return mes;
                            }

                        } catch (Exception e) {
                            e.printStackTrace();
                            return null;
                        }

                    } else if(radd.equals("2")) {
                         Util.getSession().setAttribute("sessionname",user);
                        try {
                            Connection con = DatabaseConnection.Database.getConnection();
                            ResultSet rs = null;
                            ResultSet rs1 = null;
                            Statement st = con.createStatement();
                            rs = st.executeQuery("select Permission from logincity where  User_Name='" + user + "' and Password='" + pass + "' and Permission='" + "Yes" + "'");

                            int count = 0;
                            while (rs.next()) {
                                count++;
                            }

                            if (count > 0) {
                                
                                return "ok";
                            } else {
                                mes = "Invalid Login";
                                return mes;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            return null;
                        }
                        
                    }
                }
            }
            else {
                mes = "Insert password ";
                return mes;
            }
        } 
        else {
            mes = "Insert user name ";
            return mes;
        }
        
                 return null;

    }
   
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.faces.model.SelectItem;
import javax.servlet.http.HttpSession;
/**
 *
 * @author jakaria imtiaz
 */
public class newclass {

    public String getTest() {
        return test;
    }

    public void setTest(String test) {
        this.test = test;
    }
    String rad,test;
   private List<String> che;

    public List<String> getChe() {
        return che;
    }

    public void setChe(List<String> che) {
        this.che = che;
    }
   

    
    public String getRad() {
        return rad;
    }

    public void setRad(String rad) {
        this.rad = rad;
    }
    
    public void sav(){
         try {
             String ccc=list2String(this.che);
            Connection con = DatabaseConnection.Database.getConnection();
              Statement st=con.createStatement();
          st.executeUpdate("insert into ppp(rad,che) values('"+rad+"','"+ccc+"')");
       }
       catch(Exception ex) {
           System.out.println(ex.getMessage());
      
       }
    }

    private String list2String(List<String> che) {
        String str=null;
        str=che.toString();
        return str;
    }
    
    
    public List<SelectItem> getSa(){
         List <SelectItem>li=new ArrayList<SelectItem>();
        try {
             Connection con = DatabaseConnection.Database.getConnection();
              Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select User_Name from logincity");
           while(rs.next()){
               li.add(new SelectItem(rs.getString("User_Name")));
           }
              return li;
            
       }
       catch(Exception ex) {
           System.out.println(ex.getMessage());
          return null;
       }
        
    }
    
    
    public String nnn(){
    return "ha";
}
  public String main(){
      return "main";
  }
    
}




/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.faces.event.ValueChangeListener;
import javax.faces.model.SelectItem;

/**
 *
 * @author tcl
 */
public class accessuser {
    String uu,pp,mm,ss,Location,uuu,ppp,mmm,Location1,sss,store;

    public String getStore() {
        return store;
    }

    public void setStore(String store) {
        this.store = store;
    }

    public String getSss() {
        return sss;
    }

    public void setSss(String sss) {
        this.sss = sss;
    }

    public String getLocation1() {
        return Location1;
    }

    public void setLocation1(String Location1) {
        this.Location1 = Location1;
    }

    public String getMmm() {
        return mmm;
    }

    public void setMmm(String mmm) {
        this.mmm = mmm;
    }

    public String getPpp() {
        return ppp;
    }

    public void setPpp(String ppp) {
        this.ppp = ppp;
    }

    public String getUuu() {
        return uuu;
    }

    public void setUuu(String uuu) {
        this.uuu = uuu;
    }

    public String getSs() {
        return ss;
    }

    public void setSs(String ss) {
        this.ss = ss;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String Location) {
        this.Location = Location;
    }

  
  

    public String getMm() {
        return mm;
    }

    public void setMm(String mm) {
        this.mm = mm;
    }

    public String getPp() {
        return pp;
    }

    public void setPp(String pp) {
        this.pp = pp;
    }

    public String getUu() {
        return uu;
    }

    public void setUu(String uu) {
        this.uu = uu;
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
    
    
    public List<SelectItem> getSaa(){
         List <SelectItem>lii=new ArrayList<SelectItem>();
        try {
             Connection con = DatabaseConnection.Database.getConnection();
              Statement st=con.createStatement();
           ResultSet rs1=st.executeQuery("select deptname from departlog");
           while(rs1.next()){
               lii.add(new SelectItem(rs1.getString("deptname")));
           }
              return lii;
            
       }
       catch(Exception ex) {
           System.out.println(ex.getMessage());
          return null;
       }
        
    }
      public List<SelectItem> getUser_id(){
         List <SelectItem>lii=new ArrayList<SelectItem>();
        try {
             Connection con = DatabaseConnection.Database.getConnection();
              Statement st=con.createStatement();
           ResultSet rs1=st.executeQuery("select id from userregist");
           while(rs1.next()){
               lii.add(new SelectItem(rs1.getString("id")));
           }
              return lii;
            
       }
       catch(Exception ex) {
           System.out.println(ex.getMessage());
          return null;
       }
        
    }
    
    public void acs(){
        try{
           
             Connection con = DatabaseConnection.Database.getConnection();
             Statement st = con.createStatement();
                     ResultSet rs=st.executeQuery("select Permission from logincity  where User_Name='"+uu+"'");
                       while(rs.next()){
                         setLocation(rs.getString("Permission"));
                       }
                      
                     
                       
                     
                    } catch (Exception e) {
                        e.printStackTrace();
                       
                    }  
       
        
        
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
    String text;
    public void ok(){
        
        try{
            
             Connection con = DatabaseConnection.Database.getConnection();
             Statement st = con.createStatement();
                     ResultSet rs=st.executeQuery("select deptpermission from departlog  where deptname='"+uuu+"'");
                       while(rs.next()){
                         setText(rs.getString("deptpermission"));
                         rs.close();
                       }                                        
                    } catch (Exception e) {
                        e.printStackTrace();
                       
                    }
        
    }
    
    public String as(){
        mm=null;
        return mm;
    }

    
    public void acss(){
        try{
             Connection con = DatabaseConnection.Database.getConnection();
             Statement st = con.createStatement();
                     ResultSet rs1=st.executeQuery("select deptpermission from departlog  where deptname='"+uuu+"'");
                       while(rs1.next()){
                         setLocation1(rs1.getString(1));
                         rs1.close();
                       }
                     
                     
                    } catch (Exception e) {
                        e.printStackTrace();
                       
                    }  
        
    }
    
    public String sav(){
       try {
                      Connection con = DatabaseConnection.Database.getConnection();   
                        Statement st = con.createStatement();
                        st.executeUpdate("update logincity set Permission='"+ss+"' where User_Name='"+uu+"'");
                        mm="Access updated";
                        return mm;
                    } catch (Exception e) {
                        e.printStackTrace();
                         return null;
                    }  
    }
   
      public String sav1(){
       try {
                      Connection con = DatabaseConnection.Database.getConnection();   
                        Statement st = con.createStatement();
                        st.executeUpdate("update departlog set deptpermission='"+sss+"' where deptname='"+uuu+"'");
                        mmm="Access updated";
                        return mmm;
                    } catch (Exception e) {
                        e.printStackTrace();
                         return null;
                    }  
    }
  
    
}

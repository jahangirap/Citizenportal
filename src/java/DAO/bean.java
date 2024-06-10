/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.ArrayList;
import javax.annotation.PostConstruct;

/**
 *
 * @author jakaria imtiaz
 */
public class bean {
    String name,fa_name,ma_name,pre_address,per_address,phone,email,edu,crime,crime_date,comment,
            d_license,occupation,another,crimetype,crimedesc,msg,clearence,msg1,clearance_date;

    public String getClearance_date() {
        return clearance_date;
    }

    public void setClearance_date(String clearance_date) {
        this.clearance_date = clearance_date;
    }

    public String getMsg1() {
        return msg1;
    }

    public void setMsg1(String msg1) {
        this.msg1 = msg1;
    }

    public String getClearence() {
        return clearence;
    }

    public void setClearence(String clearence) {
        this.clearence = clearence;
    }
    int idd;

    public int getIdd() {
        return idd;
    }

    public void setIdd(int idd) {
       
       this.idd=idd;
    }
 public Date sd=new Date();
 public Date rd=new Date();
  public Date subd=new Date();

    public Date getSubd() {
        return subd;
    }

    public void setSubd(Date subd) {
        this.subd = subd;
    }

    public Date getRd() {
        return rd;
    }

    public void setRd(Date rd) {
        this.rd = rd;
    }

    public Date getSd() {
        return sd;
    }

    public void setSd(Date sd) {
        this.sd = sd;
    }
 
           
    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

   

    public String getCrimedesc() {
        return crimedesc;
    }

    public void setCrimedesc(String crimedesc) {
        this.crimedesc = crimedesc;
    }

    public String getCrimetype() {
        return crimetype;
    }

    public void setCrimetype(String crimetype) {
        this.crimetype = crimetype;
    }

    public String getAnother() {
        return another;
    }

    public void setAnother(String another) {
        this.another = another;
    }

    public String getD_license() {
        return d_license;
    }

    public void setD_license(String d_license) {
        this.d_license = d_license;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation.toUpperCase();
    }

    public String getFa_name() {
        return fa_name;
    }

    public void setFa_name(String fa_name) {
        this.fa_name = fa_name.toUpperCase();
    }

    public String getMa_name() {
        return ma_name;
    }

    public void setMa_name(String ma_name) {
        this.ma_name = ma_name.toUpperCase();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name.toUpperCase();
    }

    public String getPer_address() {
        return per_address;
    }

    public void setPer_address(String per_address) {
        this.per_address = per_address.toUpperCase();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone.toUpperCase();
    }

    public String getPre_address() {
        return pre_address;
    }

    public void setPre_address(String pre_address) {
        this.pre_address = pre_address.toUpperCase();
    }

    public String getCrime_date() {
        return crime_date;
    }

    public void setCrime_date(String crime_date) {
        this.crime_date = crime_date.toUpperCase();
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment.toUpperCase();
    }

    public String getCrime() {
        return crime;
    }

    public void setCrime(String crime) {
        this.crime = crime.toUpperCase();
    }

    public bean(){
    
    information();
    }
    
    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu.toUpperCase();
    }
    String id;
int hiddenid,clr_id;

    public int getClr_id() {
        return clr_id;
    }

    public void setClr_id(int clr_id) {
        this.clr_id = clr_id;
    }
    public int getHiddenid() {
        return hiddenid;
    }

    public void setHiddenid(int hiddenid) {
        this.hiddenid = hiddenid;
    }

    
    
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
   

   
    public ArrayList<VendorBean> getMessages() {
      
        return UserDAO.getVendor();
    }
   

   
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

  
   
    
    @PostConstruct
   public void information(){
       
        try {

            Connection con = DatabaseConnection.Database.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from userregist where id='"+id+"'");
           Statement st=con.createStatement();
        
            ResultSet rs = ps.executeQuery();
           
           
          
            while (rs.next()) {
                setName(rs.getString(2));               
                setFa_name(rs.getString(3));
                setMa_name(rs.getString(4));
                setPre_address(rs.getString(5));
                setPer_address(rs.getString(6));
                setEmail(rs.getString(7));
                setPhone(rs.getString(8));
                 setEdu(rs.getString(10));
                  setD_license(rs.getString(17));
                   setOccupation(rs.getString(18));
              
               
            }
            rs.close();
           
            
        } catch (Exception e) {
            System.out.println("Error In getNotice() -->" + e.getMessage());
           
        }
        try {
            Connection con = DatabaseConnection.Database.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from userregist where id='"+id+"'");
           Statement st=con.createStatement();
        
            String qu="select * from thana where reg_id='"+id+"'";
            ResultSet rss = st.executeQuery(qu);
            System.out.println(qu); 
             while(rss.next()){
                setCrime(rss.getString(3));
                setCrime_date(rss.getString(5));
                 setComment(rss.getString(4));
                
            }
            rss.close();
        } catch (Exception e) {
        }
        try {
             Connection con = DatabaseConnection.Database.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from userregist where id='"+id+"'");
           Statement st=con.createStatement();
            ResultSet rsss = st.executeQuery("select * from Clearance where reg_id='"+id+"'");
             while(rsss.next()){
                 setClearance_date(rsss.getString(4));
                 setClearence(rsss.getString(3));
            }
           rsss.close();
        
        } catch (Exception e) {
        }
   }
    
    
    
     public String crimesave(){
    
        try {
SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String rrd = df.format(rd);
        String ssd = df.format(sd);
            Connection con = DatabaseConnection.Database.getConnection();
            Statement ps = con.createStatement();
          ps.executeUpdate("insert into thana(reg_id, crime, description, submit_date, crime_date)"
                  + " values('"+hiddenid+"','"+crimetype+"','"+crimedesc+"','"+ssd+"','"+rrd+"') ");
            msg="Entry saved";
           
          return msg;
        
           }
           
        catch (Exception e) {
            msg=("Error In getNotice() -->" + e.getMessage());
           return msg;
        }
     }
       public String clearancesave(){
    
        try {
SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
       
        String ssdd = df.format(subd);
            Connection con = DatabaseConnection.Database.getConnection();
            Statement ps = con.createStatement();
          ps.executeUpdate("insert into Clearance(reg_id, clearance, clearance_date)  values('"+clr_id+"','"+clearence+"','"+ssdd+"') ");
                
            msg1="Entry saved";
           
          return msg1;
        
           }
           
        catch (Exception e) {
            msg1=("Error In getNotice() -->" + e.getMessage());
           return msg1;
        }
     }

   
   
    }
 
    
  
    


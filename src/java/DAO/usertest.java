/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.myfaces.custom.fileupload.UploadedFile;
import DatabaseConnection.Database;

/**
 *
 * @author tcl
 */
public class usertest {

    String id,name, fname, mname, paddress, praddress, email, message,
            nationality, gender, marital, religion, national_id, drivinglicence, passportnumber, occupation, freedom, blood;
    private UploadedFile uploadedFile;
     private String imageID;
    private ArrayList<usertest> okk;

    public String getImageID() {
        return imageID;
    }

    public String getNational_id() {
        return national_id;
    }

    public void setNational_id(String national_id) {
        this.national_id = national_id;
    }

    public void setImageID(String imageID) {
        this.imageID = imageID;
    }
     
  String ShowData;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

   
 
  
    public UploadedFile getUploadedFile() {
        return uploadedFile;
    }

    public void setUploadedFile(UploadedFile uploadedFile) {
        this.uploadedFile = uploadedFile;
    }

    public String getBlood() {
        return blood;
    }

    public void setBlood(String blood) {
        this.blood = blood;
    }
    public Date da = new Date();

    public Date getDa() {
        return da;
    }

    public void setDa(Date da) {
        this.da = da;
    }

    public String getDrivinglicence() {
        return drivinglicence;
    }

    public void setDrivinglicence(String drivinglicence) {
        this.drivinglicence = drivinglicence;
    }

    public String getFreedom() {
        return freedom;
    }

    public void setFreedom(String freedom) {
        this.freedom = freedom;
    }

  

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getPassportnumber() {
        return passportnumber;
    }

    public void setPassportnumber(String passportnumber) {
        this.passportnumber = passportnumber;
    }
    public List<String> education = null;

    public List<String> getEducation() {
        return education;
    }

    public void setEducation(List<String> education) {
        this.education = education;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMarital() {
        return marital;
    }

    public void setMarital(String marital) {
        this.marital = marital;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPaddress() {
        return paddress;
    }

    public void setPaddress(String paddress) {
        this.paddress = paddress;
    }
    int phone;

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getPraddress() {
        return praddress;
    }

    public void setPraddress(String praddress) {
        this.praddress = praddress;
    }

    public String form() {

        System.out.println("jakaria");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String dd = df.format(da);
        try {
            byte[] bytes = uploadedFile.getBytes();
            String edu = this.education.toString();

            Connection con = DatabaseConnection.Database.getConnection();

            String prefix = FilenameUtils.getBaseName(uploadedFile.getName());
            String suffix = FilenameUtils.getExtension(uploadedFile.getName());
            Date now = new Date();
            long nowLong = now.getTime();
            String f = prefix + "_" + nowLong + "." + suffix;
            System.out.println(f);

            PreparedStatement pre = con.prepareStatement("insert into userregist (Name, FatherName, MothersName, PresentAdd, ParmaAdd, Email, Phone, Birth, education, religion, marital, gender, nationality, national_id, passport, driving_licence, occupation, freedom_fighter, Blood_Group,image) "
                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            

            pre.setString(1, name);
            pre.setString(2, fname);
            pre.setString(3, mname);
            pre.setString(4, paddress);
            pre.setString(5, praddress);
            pre.setString(6, email);
            pre.setInt(7, phone);
            pre.setString(8, dd);
            pre.setString(9, edu);
            pre.setString(10, religion);
            pre.setString(11, marital);
            pre.setString(12, gender);
            pre.setString(13, nationality);
            pre.setString(14, national_id);
            pre.setString(15, passportnumber);
            pre.setString(16, drivinglicence);
            pre.setString(17, occupation);
            pre.setString(18, freedom);
            pre.setString(19, blood);
            pre.setBytes(20, bytes);
            
          //  pre.setString(21, f);
            // pre.setLong(3, uploadedFile.getSize());

            pre.executeUpdate();
            pre.close();

            //message = "You have successfully completed registration";
            //return message;
            return "RegistrationShow";
           
        } catch (Exception e) {
            message = e.getMessage();
            System.out.println(message);
            return message;
        }

    }
    
    
    public ArrayList<usertest> getShowData() throws SQLException {
        ArrayList<usertest> list = new ArrayList<usertest>();
        try {
            Connection con = null;

            Statement stmt = null;
            String sql;
            String result;
            Database cc = new Database();
            con = cc.getConnection();
            stmt = con.createStatement();
            sql = "select * from userregist order by id";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                usertest p = new usertest();
               
                p.setName(rs.getString("Name"));
              p.setFname(rs.getString("FatherName"));
                p.setMname(rs.getString("MothersName"));
                p.setPraddress(rs.getString("PresentAdd"));
                p.setPaddress(rs.getString("ParmaAdd"));
                p.setEmail(rs.getString("Email"));
                p.setPhone(rs.getInt("Phone"));
              // p.setEducation(rs.getString("education"));
                 p.setReligion(rs.getString("religion"));
                p.setMarital(rs.getString("marital"));
                p.setGender(rs.getString("gender"));
                p.setNationality(rs.getString("nationality"));
                p.setNational_id(rs.getString("national_id"));
                p.setPassportnumber(rs.getString("passport"));
                p.setDrivinglicence(rs.getString("driving_licence"));
                p.setOccupation(rs.getString("occupation"));
                p.setFreedom(rs.getString("freedom_fighter"));
                p.setBlood(rs.getString("Blood_Group"));
                p.setImageID(rs.getString("id"));

                  list.add(p);
                 
            }

            for (int i = 0; i < list.size(); i++) {
                return list;
                
            }
           

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
  
}

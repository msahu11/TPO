/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conn.MyConnection;
import dto.Application;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rachee
 */
public class ApplicationAdapter {
    Connection con;
    
    public ApplicationAdapter() {
        try{
            con = MyConnection.getCon();
        }catch(Exception e){
            System.out.println(e);  
        }
    }
    public int apply(Application user){
        int t=0;
                int len;

        try{
        
            File file = new File(user.getCv());
            FileInputStream fis = new FileInputStream(file);
            len = (int)file.length();
            PreparedStatement ps = con.prepareStatement
                ("insert into apply values(?,?,?,?,?,?,?,?)");
                ps.setString(1,user.getUnm());
                ps.setFloat(4,user.getCgpa());
                ps.setString(6,user.getCont());
                ps.setString(2,user.getName());
                ps.setString(3,user.getCname());
                ps.setString(5,user.getEmail());
                ps.setBinaryStream(8, fis, len);
                 ps.setString(7,file.getName());

                t = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        } //catch
     return t;
    }
    
    
    
    public List<Application> viewApplication(String cname){
        List<Application> rlist = new ArrayList<>();
        try{
            PreparedStatement ps = con.prepareStatement
            ("select unm,name,cgpa,email,cont,cvname from apply where cname=?");
                       ps.setString(1, cname);
           ResultSet rs =ps.executeQuery();
      
            while(rs.next()){
                Application s = new Application();
                s.setUnm(rs.getString(1));
                s.setName(rs.getString(2));
                s.setCgpa(rs.getFloat(3));
                 s.setEmail(rs.getString(4));
                s.setCont(rs.getString(5));
                 s.setCvname(rs.getString(6));
                rlist.add(s);
            }
        }    
        catch(Exception e){
            System.out.println(e);
        }       
        
                            
        
         // ... do something with these variables ...
          
     
   
        return rlist;
    }
    
    public int deleteApp(String cname,String eno){
        int t=0;
        try{
        PreparedStatement ps = con.prepareStatement
        ("delete from apply where unm=? and cname=?");
           ps.setString(1, eno);
                      ps.setString(2, cname);

           t = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        }
        return t;
        
    }
    
    
    
    
    
    
    
    public int getCv(String cname,String eno) {
         int t=0;
        byte[] fileBytes;
        try {
             PreparedStatement ps = con.prepareStatement(
              "select cv from apply where cname=? and unm=?");
             ps.setString(1, cname);
              ps.setString(2, eno);
                        ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                t++;
                fileBytes = rs.getBytes(1);
                OutputStream targetFile=  new FileOutputStream(
                        "/home/abc/Downloads/studentCv.pdf");
                 
                targetFile.write(fileBytes);
                targetFile.close();
            }
             
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }
}

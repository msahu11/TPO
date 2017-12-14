package dao;

import conn.MyConnection;
import dto.Recruiter;
import dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RecruiterAdapter {

    Connection con;
    
    public RecruiterAdapter() {
        try{
            con = MyConnection.getCon();
        }catch(Exception e){
            System.out.println(e);  
        }
    }
    
    
    
      public List<Recruiter> viewRecruiter(String br){
        List<Recruiter> rlist = new ArrayList<>();
        try{
            PreparedStatement ps = con.prepareStatement
            ("select name,link,doa from recruiter where branch=?");
                       ps.setString(1, br);
           ResultSet rs =ps.executeQuery();
      
            while(rs.next()){
                Recruiter s = new Recruiter();
                s.setName(rs.getString(1));
                s.setLink(rs.getString(2));
                s.setDoa(rs.getString(3));
                rlist.add(s);
            }
        }    
        catch(Exception e){
            System.out.println(e);
        }       
        
                            
        
         // ... do something with these variables ...
          
     
   
        return rlist;
    }
}
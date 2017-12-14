package dao;

import conn.MyConnection;
import dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserAdapter {

    Connection con;
    
    public UserAdapter() {
        try{
            con = MyConnection.getCon();
        }catch(Exception e){
            System.out.println(e);  
        }
    }
    
    
    public int registerUser(User user){
        int t=0;
        try
        {
            PreparedStatement ps = con.prepareStatement
                ("insert into register values(?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,user.getUnm());
                ps.setString(2,user.getUpass());
                ps.setString(3,user.getEmail());
                ps.setString(4,user.getCont());
                ps.setString(5,user.getName());
                ps.setString(6,user.getBranch());
                ps.setString(7,user.getGen());
                ps.setString(8,user.getDob());
                ps.setString(9,user.getYear());
                ps.setString(10, user.getRole());
                t = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        } //catch
     return t;
    } // registeruser

    public boolean loginCheck(User user){
        boolean flag=false;
        try{
            PreparedStatement ps = 
                    con.prepareStatement
        ("select * from user where a=? and p=? and role=?");
            ps.setString(1, user.getUnm());
            ps.setString(2, user.getUpass());
            ps.setString(3, user.getRole());
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                flag=true;
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return flag;
    } 
    
    
    public int updateEmail(User user){
int t=0;
try{
   String mail= user.getEmail();
   String eno= user.getUnm();
            PreparedStatement ps = 
                    con.prepareStatement
        ("update student set i=? where a=?");
            ps.setString(1, mail);
            ps.setString(2, eno);
            t= ps.executeUpdate();
            
        }catch(Exception e){
            System.out.println(e);
        }
        return t;
    } 
    
    
     public int updateCont(User user){
int t=0;
try{
   String cont= user.getCont();
   String eno= user.getUnm();
            PreparedStatement ps = 
                    con.prepareStatement
        ("update student set e=? where a=?");
            ps.setString(1, cont);
            ps.setString(2, eno);
            t= ps.executeUpdate();
            
        }catch(Exception e){
            System.out.println(e);
        }
        return t;
    } 
    
    
     public int deleteRecord(String eno){
        int t=0;
        try{
        PreparedStatement ps = con.prepareStatement
        ("delete from register where a=?");
           ps.setString(1, eno);
           t = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        }
        return t;
        
    } // deleteRecord
     
    
     
     
     public int insertRecord(String eno){
        int t=0,t1=0;
        
        try{
            PreparedStatement ps = con.prepareStatement
            ("select * from register where a=?");
                       ps.setString(1, eno);
           ResultSet rs =ps.executeQuery();
      
            if(rs.next()){
                User s = new User();
                s.setUnm(rs.getString(1));
                s.setUpass(rs.getString(2));
                s.setName(rs.getString(5));
                s.setEmail(rs.getString(3));
                s.setCont(rs.getString(4));
                s.setBranch(rs.getString(6));
                s.setYear(rs.getString(9));
                s.setDob(rs.getString(8));
                s.setGen(rs.getString(7));
                s.setRole(rs.getString(10));
                
                
                
                
                        
         
          PreparedStatement ps1 = con.prepareStatement
            ("insert into student values(?,?,?,?,?,?,?,?)");
             ps1.setString(1,s.getUnm());
                ps1.setString(4,s.getCont());
                ps1.setString(2,s.getName());
                ps1.setString(3,s.getBranch());
                ps1.setString(5,s.getYear());
                ps1.setString(8,s.getEmail());
                ps1.setString(7,s.getGen());
                ps1.setString(6,s.getDob());
                t = ps1.executeUpdate();
                
                
                        PreparedStatement ps2 = con.prepareStatement
            ("insert into user values(?,?,?)");
                             ps2.setString(1,s.getUnm());
                ps2.setString(2,s.getUpass());
                ps2.setString(3,s.getRole());

            t1 = ps2.executeUpdate();
         // ... do something with these variables ...
         
         int q=deleteRecord(eno);
     }
        }
           

                 
        catch(Exception e){
            System.out.println(e);
        }
        return t;
    }
     
     
     
     
     
      public List<User> notify(String br){
        List<User> slist = new ArrayList<>();
        try{
            PreparedStatement ps = con.prepareStatement
            ("select a,c,d,e,i from student where d=?");
                       ps.setString(1, br);
           ResultSet rs =ps.executeQuery();
      
            while(rs.next()){
                User s = new User();
                s.setUnm(rs.getString(1));
                s.setName(rs.getString(2));
                s.setEmail(rs.getString(5));
                s.setCont(rs.getString(4));
                s.setBranch(rs.getString(3));
                slist.add(s);
            }
        }    
        catch(Exception e){
            System.out.println(e);
        }       
        
                            
        
         // ... do something with these variables ...
          
     
   
        return slist;
    }
}   // class


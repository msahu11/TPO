package dao;
import conn.MyConnection;
import dto.Feedback;
import dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FeedbackAdapter {

    Connection con;
    
    public FeedbackAdapter() {
        try{
            con = MyConnection.getCon();
        }catch(Exception e){
            System.out.println(e);  
        }
    }
     public int submitFeedback(Feedback f){
        int t=0;
        try
        {
            PreparedStatement ps = con.prepareStatement
                ("insert into feedback values(?,?)");
                ps.setString(1,f.getUnm());
                ps.setString(2,f.getFeed());
               
                t = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        } //catch
     return t;
    }
     
     
     
     public int submitReply(Feedback f){
        int t=0;
        try
        {
            String eno=f.getUnm();
            
            PreparedStatement ps = con.prepareStatement
            ("select * from feedback where unm=?");
                       ps.setString(1, eno);
           ResultSet rs =ps.executeQuery();
      
            if(rs.next()){
                Feedback s = new Feedback();
                s.setUnm(rs.getString(1));
                s.setFeed(rs.getString(2));
                
            
            
            PreparedStatement ps1= con.prepareStatement
                ("insert into reply values(?,?,?)");
                ps1.setString(1,f.getUnm());
                                ps1.setString(2,s.getFeed());

                ps1.setString(3,f.getReply());
               
                t = ps1.executeUpdate();
                int t1=deleteFeed(eno);
        }
        }catch(Exception e){
            System.out.println(e);
        } //catch
     return t;
    }
     
     
    
           

        
     
      public List<Feedback> showFeedback(){
        List<Feedback> slist = new ArrayList<>();
        try{
            PreparedStatement ps = con.prepareStatement
            ("select unm,feed from feedback");
           ResultSet rs =ps.executeQuery();
      
            while(rs.next()){
                Feedback s = new Feedback();
                s.setUnm(rs.getString(1));
                s.setFeed(rs.getString(2));
               
                slist.add(s);
            }
        }    
        catch(Exception e){
            System.out.println(e);
        } 
        
        return slist;
    }
      
      
        
         public List<Feedback> viewReply(String eno){
        List<Feedback> slist = new ArrayList<>();
        try{
            PreparedStatement ps = con.prepareStatement
            ("select feed,rep from reply where unm=?");
                       ps.setString(1, eno);

           ResultSet rs =ps.executeQuery();
           
      
            while(rs.next()){
                Feedback s = new Feedback();
                s.setReply(rs.getString(2));
                s.setFeed(rs.getString(1));
               
                slist.add(s);
            }
        }    
        catch(Exception e){
            System.out.println(e);
        } 
         
        
                            
        
         // ... do something with these variables ...
          
     
   
        return slist;
    }
      
      public int deleteFeed(String eno){
        int t=0;
        try{
        PreparedStatement ps = con.prepareStatement
        ("delete from feedback where unm=?");
           ps.setString(1, eno);
           t = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        }
        return t;
        
    }
}
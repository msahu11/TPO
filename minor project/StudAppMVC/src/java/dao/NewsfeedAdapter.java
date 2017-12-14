/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conn.MyConnection;
import dto.Feedback;
import dto.Newsfeed;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author abc
 */
public class NewsfeedAdapter {
    
    
    Connection con;
    
    public NewsfeedAdapter() {
        try{
            con = MyConnection.getCon();
        }catch(Exception e){
            System.out.println(e);  
        }
    }
    
    
    public int submitNewsfeed(Newsfeed f){
        int t=0;
        try
        {
            PreparedStatement ps = con.prepareStatement
                ("insert into newsfeed values(?,?)");
                ps.setString(1,f.getNews());
                ps.setString(2,f.getImage());
               
                t = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        } //catch
     return t;
    }
    
}

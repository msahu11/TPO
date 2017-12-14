package dao;

import conn.MyConnection;
import dto.Student;
import dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentAdapter {

    Connection con;
    public StudentAdapter() {
        try{
            con = MyConnection.getCon();
        }catch(Exception e){
            System.out.println(e);
        }
    }
    
    
    public int insertRecord(Student student){
        int t=0;
        try{
            PreparedStatement ps = con.prepareStatement
            ("insert into student(name,phy,che,mat) values(?,?,?,?)");
            ps.setString(1,student.getName());
            ps.setFloat(2,student.getPhy());
            ps.setFloat(3,student.getChe());
            ps.setFloat(4,student.getMat());
            t = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        }
        return t;
    } // insertRecord

    public List<User> getStudentList(){   
        List<User> slist = new ArrayList<>();
        try{            
            PreparedStatement ps = 
                    con.prepareStatement("select * from register");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
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
                slist.add(s);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return slist;
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
} // class

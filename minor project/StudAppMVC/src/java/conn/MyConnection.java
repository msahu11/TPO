package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {

public static Connection con;

public static Connection getCon()throws Exception{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studapp", "root", "root");
    return con;
}
}

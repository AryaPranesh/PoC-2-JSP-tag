package bharath;
import java.sql.*;


public class jdbcCon {
    private static Connection con;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbharath","root","Saviramzmay21!");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}


package bharath;


import java.sql.*;

public class UserDBin {
    Connection con ;

    public UserDBin(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(User user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into user(Firstname,Lastname,Phone,UserName,DOB,Password) values(?,?,?,?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getFirstname());
           pt.setString(2, user.getLastname());
           pt.setString(3, user.getPhone());
           pt.setString(3, user.getUserName());
           pt.setString(3, user.getDOB());
           pt.setString(3, user.getPassword());
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    public User login(String UserName, String Password){
        User usr=null;
        try{
            String query ="select * from user where UserName=? and Password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, UserName);
            pst.setString(2, Password);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                usr = new User();
                usr.setUserName(rs.getString("UserName"));
                
                usr.setPassword(rs.getString("password"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return usr;
    }

}


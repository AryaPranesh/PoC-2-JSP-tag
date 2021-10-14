package bharath;


public class User {
    
    String Firstname;
    String Lastname;
    String  Phone;
    String UserName;
    String DOB;
    String Password;
   
    public User() {
    }


    public User( String Firstname, String Lastname,String Phone,String UserName,String DOB, String Password) {
        this.Firstname= Firstname;
        this.Lastname = Lastname;
        this.Phone = Phone;
        this.UserName =UserName;
        this.DOB= DOB;
        this.Password = Password;
    }

    public User(String UserName, String Password) {
        this.UserName = UserName;
        this.Password = Password;
    }

	public String getFirstname() {
		return Firstname;
	}



	public void setFirstname(String firstname) {
		Firstname = firstname;
	}



	public String getLastname() {
		return Lastname;
	}



	public void setLastname(String lastname) {
		Lastname = lastname;
	}



	public String getPhone() {
		return Phone;
	}



	public void setPhone(String phone) {
		Phone = phone;
	}



	public String getUserName() {
		return UserName;
	}



	public void setUserName(String userName) {
		UserName = userName;
	}



	public String getDOB() {
		return DOB;
	}



	public void setDOB(String dOB) {
		DOB = dOB;
	}



	public String getPassword() {
		return Password;
	}



	public void setPassword(String password) {
		Password = password;
	}
    

}  
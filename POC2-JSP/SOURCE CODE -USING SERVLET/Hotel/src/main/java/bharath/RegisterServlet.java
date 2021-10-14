package bharath;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



	public class RegisterServlet extends HttpServlet {
	        private static final long serialVersionUID = 1L;
	          protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	                 
	                 String fname = request.getParameter("Firstname");
	                 String lname = request.getParameter("Lastname");
	                 String phno = request.getParameter("Phone");
	                 String uname = request.getParameter("UserName");
	                 String dob = request.getParameter("DOB");
	                 String passw = request.getParameter("Password");
	                                  
	                 if(fname.isEmpty() || lname.isEmpty() || phno.isEmpty() ||
	                                    uname.isEmpty() || dob.isEmpty() || passw.isEmpty())
	                 {
	                           RequestDispatcher req = request.getRequestDispatcher("Registration.jsp");
	                           req.include(request, response);
	                 }
	                 else
	                 {
	                           RequestDispatcher req = request.getRequestDispatcher("Welcome.jsp");
	                           req.forward(request, response);
	                 }
	        }
	 
	}
	/*private static final long serialVersionUID = 1L;
    public RegisterServlet() {
        super();
        
    }

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		String Fname = request.getParameter("Firstname");
		String Lname = request.getParameter("Lastname");
		String phno = request.getParameter("Phone");
		String Uname = request.getParameter("UserName");
		String dob = request.getParameter("DOB");
		String passw = request.getParameter("Password");
	
		User userModel = new User(Fname, Lname,phno,dob,Uname,passw);

		
		UserDBin regUser = new UserDBin(jdbcCon.getConnection());
		if (regUser.saveUser(userModel)) {
		   response.sendRedirect("index.jsp");
		} else {
		    String errorMessage = "User Available";
		    HttpSession regSession = request.getSession();
		    regSession.setAttribute("RegError", errorMessage);
		    response.sendRedirect("Registration.jsp");
		    }
	}

}*/

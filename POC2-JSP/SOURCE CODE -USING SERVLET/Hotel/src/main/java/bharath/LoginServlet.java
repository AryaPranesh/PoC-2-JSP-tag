package bharath;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
		String logUser = request.getParameter("UserName");
        String logpass = request.getParameter("Password");
        
        UserDBin db =  new UserDBin(jdbcCon.getConnection());
        User user = db.login(logUser, logpass);
        
        if(user!=null){
            HttpSession session = request.getSession();
            session.setAttribute("login", user);
            response.sendRedirect("Welcome.jsp");
        }else {
        	PrintWriter out=response.getWriter();
			out.print("user not found");
        }
          

	}

}

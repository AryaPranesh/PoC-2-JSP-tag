<%@page import="bharath.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("login");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
 Welcome, <%= user.getUserName() %></h1>
<h3>
 DOB: <%= user.getDOB() %> </h3>
<h3>
Phone number: <%= user.getPhone() %> </h3>
<h3>
Your Password: <%= user.getPassword() %></h3>
<button><a href="LogoutServlet">Log Out</a></button>
    </body>
</html>

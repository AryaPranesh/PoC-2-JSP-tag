<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>

<html>
<head>
<title>Welcome</title>
<style>
body {
  background-image:
    url('https://th.bing.com/th/id/OIP.6Ol42GgPFuJCyePdzMRKQgHaEo?pid=ImgDet&rs=1');
  background-repeat: no-repeat;
  background-size: cover;
}
</style> 

</head>
<body>

        <table>
        <tr><td>
        <% String username = request.getParameter("UserName"); %>
        <a>Welcome , you have logged in.</a></td></tr>
        </table>
    
    


<h1>Room Availabilty </h1>
       <%
          Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbh","root","Saviramzmay21!");
          Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from room") ;
       %>
      <table BORDER="1">
      <tr>
      <th>RoomType</th>
      <th>Room Shift Timing</th>
      <th>Available Rooms</th>
      </tr>
      <% while(resultset.next()){ %>
      <tr>
       <td> <%= resultset.getString(1) %></td>
       <td> <%= resultset.getString(2) %></td>
       <td> <%= resultset.getString(3) %></td>
      </tr>
      <% } %>
     </table>
    
<table>
<tr></td><a href=Home.jsp"><b>Logout</b></a></td></tr>
</table>
</body>
</html>
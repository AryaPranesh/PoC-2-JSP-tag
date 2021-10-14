<%@ page import="java.sql.* " %>
<html>
<head>
<title>Login Form</title>
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
<%
String Uname=request.getParameter("UserName");
session.putValue("UserName",Uname);
String pwd=request.getParameter("PassWord");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbh","root","Saviramzmay21!");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM registration WHERE UserName='"+Uname+"'");
if(rs.next())
{
  if(rs.getString(4).equals(pwd))
  {
	  out.println("Hello  "+Uname+"<br>"+"Your login time "+ java.util.Calendar.getInstance().getTime());
	  
  }
  else{
	  out.println("Invalid password");
	  
	  }
  }
  
%>

</table>
<div>
<a href="Home.jsp">Home</a>
</div>
</body>

</html>
        

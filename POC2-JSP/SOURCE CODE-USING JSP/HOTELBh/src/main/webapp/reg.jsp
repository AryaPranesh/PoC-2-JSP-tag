<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
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

<%
String fname=request.getParameter("FirstName");
String lname=request.getParameter("LastName");
String Username=request.getParameter("UserName");
String password=request.getParameter("PassWord");
session.putValue("UserName",Username);
String phno=request.getParameter("PhoneNumber");
String dob=request.getParameter("DOB");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbh","root","Saviramzmay21!");
Statement st=con.createStatement();
int i=st.executeUpdate("INSERT INTO registration values('"+fname+"','"+lname+"','"+Username+"','"+password+"','"+phno+"','"+dob+"')");
out.println("Sucessfully registered");
%>
<a href="login.html">LOGIN</a>
<a href="Home.jsp">Back to home</a>
</body>
</html>
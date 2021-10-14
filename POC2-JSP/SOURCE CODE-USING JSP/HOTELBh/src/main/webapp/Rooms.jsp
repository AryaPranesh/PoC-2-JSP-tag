<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<%
String roomtype=request.getParameter("RoomType");
String roomshift=request.getParameter("RoomShiftSlot");
String available=request.getParameter("Available");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbh", "root", "Saviramzmay21!");
Statement st=conn.createStatement();

int i=st.executeUpdate("INSERT INTO room values('"+roomtype+"','"+roomshift+"','"+available+"')");
out.println("Room Booked!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<a href="Welcome.jsp">Click here</a>
<h2>To view the room booking status</h2>








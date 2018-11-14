<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%

String uname=request.getParameter("uname");

String email=request.getParameter("email");

String psw=request.getParameter("psw");

String psw1=request.getParameter("psw1");

try

{

    Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mehak", "root", "");

Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users1(uname,email,psw,psw1)values('"+uname+"','"+email+"','"+psw+"','"+psw1+"')");

out.println("Thank you for register !");

}

catch(Exception e)

{

System.out.print(e);

e.printStackTrace();

}

%>


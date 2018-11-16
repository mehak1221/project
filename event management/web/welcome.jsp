<%-- 
    Document   : welcome
    Created on : Nov 13, 2018, 10:21:45 AM
    Author     : hp
--%>

<%@page import="java.sql.*"%>

<%@page import="java.util.*"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>LOGIN</title>

    </head>

    <body>

        <%

     String uname = request.getParameter("uname");

     String psw = request.getParameter("psw");

            try

            {

                String myUrl = "jdbc:mysql://localhost:3306/mehak";

                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection conn = DriverManager.getConnection(myUrl,"root","");

            //out.println("Hello 1");



                String query = "Select uname,psw from users1 where uname='"+uname+"' and psw ='"+psw+"'";

                Statement st = conn.createStatement();

                ResultSet rs = st.executeQuery(query);

                

               if(rs.next())

                {

                    out.println("Logged in successfully");

                    out.print("Hello "+uname);
                                  //  response.sendRedirect("home.html");

                }
               else

                   out.println("Username or Password does not exists");

                st.close();

            }

            catch(ClassNotFoundException e)

            {

                out.print(e);

            }

            catch(SQLException e)

            {

                out.print(e);

            }

            

           %>

            

    </body>

</html>

<%-- 
    Document   : login
    Created on : Nov 13, 2018, 9:30:28 AM
    Author     : Mehak

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%=request.getParameter("uname")%>
        <%=request.getParameter("psw")%>
    </body>
</html>

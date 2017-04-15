<%-- 
    Document   : newpost
    Created on : Apr 9, 2017, 8:19:27 PM
    Author     : chilliar
--%>

<%@page import="myBeans.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show new posts</title>
    </head>
    <body>
        <%
         String sql = "SELECT title FROM forums";
         DBConnect dbConnect = new DBConnect();
         out.println(dbConnect.display(sql));
        %>
      
    </body>
</html>

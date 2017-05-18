<%-- 
    Document   : reportpost
    Created on : May 17, 2017, 11:27:57 PM
    Author     : rmaclea1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report post</title>
    </head>
    <body>
      
        <%
        String title = request.getParameter("title");
        String message = request.getParameter("message");
        String sql = "insert into complaints values (0, '" + title + "', '" + message + "', CURRENT_TIMESTAMP, 0, 1, 1)";
        DBConnect dbConnect = new DBConnect();
        out.println(dbConnect.updateDBpost(sql));
     
        %>
    </body>
</html>
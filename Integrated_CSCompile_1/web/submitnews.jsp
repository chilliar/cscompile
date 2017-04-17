<%-- 
    Document   : submitnews
    Created on : Feb 16, 2017, 2:07:19 AM
    Author     : rmaclea1
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit news</title>
    </head>
    <body>
       
        <%
        String title = request.getParameter("title");
        String body = request.getParameter("body");
        String sql = "insert into posts values (0, 3,'" + title + "', '" + body + "', CURRENT_TIMESTAMP, 1, 1)";
        DBConnect dbConnect = new DBConnect();
        out.println(dbConnect.updateDB(sql));
     
        %>
    </body>
</html>
<%-- 
    Document   : submitbook
    Created on : Feb 16, 2017, 2:07:39 AM
    Author     : rmaclea1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suggest a Book</title>
    </head>
    <body>
      
        <%
        String title = request.getParameter("title");
        String body = request.getParameter("body");
        String sql = "insert into posts values (0, 1,'" + title + "', '" + body + "', CURRENT_TIMESTAMP, 1, 1)";
        DBConnect dbConnect = new DBConnect();
        out.println(dbConnect.updateDBpost(sql));
     
        %>
    </body>
</html>
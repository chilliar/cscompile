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
        <%@include file = "index.jsp" %>
        <%
        String title = request.getParameter("title");
        String body = request.getParameter("body");
        String sql = "insert into posts values (0,'" + title + "', '" + body + "')";
        DBConnect dbConnect = new DBConnect();
        out.println(dbConnect.updateDB(sql));
     
        %>
    </body>
</html>


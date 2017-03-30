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
        <%@include file = "index.jsp" %>
        <%
        String title = request.getParameter("title");
        String body = request.getParameter("body");
        String sql = "insert into test values (0,'" + title + "', '" + body + "')";
        DBConnect dbConnect = new DBConnect();
        out.println(dbConnect.updateDB(sql));
     
        %>
    </body>
</html>

<%-- 
    Document   : signupuser
    Created on : Apr 2, 2017, 11:13:57 AM
    Author     : chilliar, rmaclea
--%>

<%@page import="myBeans.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up user</title>
    </head>
    <body>
        <%
         String f_name = request.getParameter("f_name");
         String l_name = request.getParameter("l_name");
         String email = request.getParameter("email");
         String email2 = request.getParameter("email2");
         String username = request.getParameter("username");
         String password = request.getParameter("password");
         String password2 = request.getParameter("password2");
         String sql = "insert into members values (0, 1, '" + username + "', '" +password+ "', '" + f_name + "', '" + l_name+ "', '" + email + "')";
         DBConnect dbConnect = new DBConnect();
         out.println(dbConnect.updateDB(sql));
        %>
    </body>
</html>

<%--
First 

Last
Email
re email
username
pass
re pass
--%>


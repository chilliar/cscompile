<%-- 
    Document   : admin
    Created on : Feb 2, 2017, 10:23:56 AM
    Author     : rmaclea1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin <%= session.getAttribute("admin")%></title>
        <%@include file="session.jsp" %>
    </head>
    <body>
        <%--<%@include file = "headerloggedin.jsp" %>--%>
        
        <h1>Hello <%= session.getAttribute("admin")%></h1>
        
    </body>
</html>

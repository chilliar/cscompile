<%-- 
    Document   : user
    Created on : Feb 2, 2017, 10:23:43 AM
    Author     : rmaclea1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User <%= session.getAttribute("user")%></title>
        <%@include file="sessionuser.jsp" %>
    </head>
    <body>
        <%-- <%@include file = "headerloggedin.jsp" %>--%>
        
        <h1>Hello <%= session.getAttribute("user")%></h1>
        
    </body>
</html>

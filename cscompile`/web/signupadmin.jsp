<%-- 
    Document   : signupadmin
    Created on : Feb 2, 2017, 9:56:55 AM
    Author     : rmaclea1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Signup</title>
  </head>
  <body>
    <%
      String name = request.getParameter("name");
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      String sql = "insert into admin values (0,'" + name + "', '" + username + "', '"
              + password + "', 1)";
      DBConnect dbConnect = new DBConnect();
      out.println(dbConnect.updateDB(sql));
     
    %>
    </body>
</html>

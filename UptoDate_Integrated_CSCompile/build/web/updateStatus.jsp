<%-- 
    Document   : updateStatus
    Created on : May 8, 2017, 5:31:14 PM
    Author     : ibaez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>update status</title>
  </head>
  <body>
       <%
         String Status = request.getParameter("Status");
         String Username = request.getParameter("username");
         String sql = "insert into members values (Status)";
          myBeans.DBConnect dbc = new myBeans.DBConnect();
         out.println(dbc.updateDB(sql));
        %>
  </body>
</html>

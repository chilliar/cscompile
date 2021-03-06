<%-- 
    Document   : login
    Created on : Feb 2, 2017, 9:52:05 AM
    Author     : rmaclea1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" 
        import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
  </head>
  <body>
    <%
      String user = request.getParameter("username");
      String password = request.getParameter("password");
      String sql = "select name, status from user where username = ?"
              + " and password = ?";
      DBConnect dbConnect = new DBConnect();
      String result = dbConnect.queryDB(sql, user, password);
      if (result.length() == 0) {
        response.sendRedirect("header.jsp");
        return;         
      }

      String values[] = result.split(", ");
      String name = values[0];
      session.setAttribute("user", name);
      
      int status = Integer.parseInt(values[1]);
      session.setAttribute("status", status);
      switch (status) {
        case 1:
          response.sendRedirect("admin.jsp");
          break;

        default:
          response.sendRedirect("user.jsp");
      }
      
    %>
  </body>
</html>
<%-- 
    Document   : loginuser
    Created on : Feb 2, 2017, 9:57:10 AM
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
      String sql = "select Username, Status from members where Username = ?"
              + " and Password = ?";
      DBConnect dbConnect = new DBConnect();
      String result = dbConnect.queryDB(sql, user, password);
      if (result.length() == 0) {
        response.sendRedirect("index.jsp");
        return;
      }
      String values[] = result.split(", ");
      String name = values[0];
      session.setAttribute("username", name);
      
      int status = Integer.parseInt(values[1]);
      session.setAttribute("Status", status);
      switch (status) {
        case 1:
          response.sendRedirect("CSnews.jsp");
          break;
        case 2:
          response.sendRedirect("adminpage.jsp");
          break;
        default:
          response.sendRedirect("index.jsp");
      }
      
    %>
  </body>
</html>
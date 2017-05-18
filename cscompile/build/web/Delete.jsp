<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Look Up Data</title>
</head>
<body>
<form action="Delete.jsp">
<table>
<tr>
<td>Enter ID To look up</td>
<td><input type="text" name="id"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Delete"/></td>
</tr>
</table>
</form>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/cscompile";%>
<%!String user = "cscompile";%>
<%!String psw = "cscompile";%>
<%
String id = request.getParameter("id");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int Member_ID = Integer.parseInt(id);
try
{

  String value=request.getParameter("member_id");;
  int v=Integer.parseInt(value);
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cscompile","root", "welcome");
  Statement st=conn.createStatement();
  ResultSet rs = st.executeQuery("select * from member where member_id='"+v+"'");
  if(rs.next()){
      %>
  <tr><td>Name: </td><td><input type="text" value="<%=rs.getString("username")%>"/> </td></tr>
   %>
<tr><td>first name: </td><td<input type="text" value="<%=rs.getString("firstname")%>" > </td></tr>
<tr><td>last name: </td><td<input type="text" value="<%=rs.getString("lastname")%>" > </td></tr>
<tr><td>member id: </td><td<input type="text" value="<%=rs.getInt("member_id")%>" > </td></tr>
<tr><td>Email: </td><td<input type="text" value="<%=rs.getString("email")%>" > </td></tr>
      <%
  }
  %>
{%>
<%
}
catch(SQLException sqe)
{
request.setAttribute("error", sqe);
out.println(sqe);
}
}
%>
</body>
</html> 
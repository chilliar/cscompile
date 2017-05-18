<html>
  <head>
    <title>CSCompile</title>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>    
  <body>
    <div id="header">  
        <div class="Brand_Name">
            <a href="index.jsp">CsCompile</a>
        </div>
    </div>
    <div id="container">
      <div class="sidebar">
        <ul id="nav">
          <li><a  href="adminpage.jsp">Dashboard</a></li>
          <li><a class="selected" href="#">Complaints</a></li>
          <li><a href="admin_Users.jsp">Users</a></li>
        </ul>
      </div>
      <div class="content">
        <h1>Complaint</h1>
        <div id="box">
          <div class="box-top">User Complaint</div>
          <div class="box-panel">
            <%
              String sql = "select complaints.Member_ID, message, Username, Body "
                      + "from complaints, Threads, Members where Reviewed = 0 and "+
                      " complaints.Thread_ID = Threads.Thread_ID and " +
                      " members.member_id = threads.member_id";
              myBeans.DBConnect dbc = new myBeans.DBConnect();
            %>
            <%= dbc.displayComplaints(sql)%>
          </div>
          <p> </p>


        </div>  	
      </div>

  </body>
</html>

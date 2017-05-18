<html>
  <head>
    <title>CSCompile</title>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>    
  <body>
    <div id="header">
      <div class="Brand_Name"><a hnef="#">Cs<span>Compile</span></a></div>
    </div>
    <div id="container">
      <div class="sidebar">
        <ul id="nav">
          <li><a  href="index.jsp">Dashboard</a></li>
          <li><a href="admin_Reports.jsp">Complaints</a></li>
          <li><a class= "selected" href="admin_User.jsp">Status Update</a></li>

        </ul>
      </div>
      <div class="content">
        <h1>Users</h1>
        <div id="box">
          <div class="box-top">Username</div>
          <div class="box-panel">
          <form name="status update" action="updateStatus.jsp" method="post">
      <table border="1">
          <tr>
            <td class="text-center text-primary">Member ID</td>
            <td><input type="text" name="member_id" size="60" /></td>
          </tr>
          <tr>
            <td class="text-center text-primary">Status</td>
            <td><input type="text" name="Status" size="60" /></td>
          </tr>
          <tr>
              <td> </td>
              <td><input class="btn btn-primary btn-block" type="submit" name="update" value="Submit"</td>
        </tr>
      </table>
</form>
            <p> </p>
          </div>


        </div>  	
      </div>

  </body>
</html>

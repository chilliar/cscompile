
<html>
    <head>
        <title>CSCompile</title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>    
    <body>
        <%!
            String name;
        %>
        <div id="header">
            <div class="Brand_Name"><a hnef="#">Cs<span>Compile</span></a></div>
        </div>
        <div id="container">
            <div class="sidebar">
                <ul id="nav">
                    <li><a class = "selected" href="#">Dashboard</a></li>
                    <li><a href="admin_Reports.jsp">Complaints</a></li>
                    <li><a href="admin_User.jsp">Status Update</a></li>
                </ul>
            </div>
            <div class="content">
                <h1>Dashboard</h1>
                <%
                    String sql = "select * from members WHERE username='" + name + "'";
                    myBeans.DBConnect dbc = new myBeans.DBConnect();
                %>
                <%= dbc.Search(sql)%>

                <p> </p>


            </div>  	
        </div>

    </body>
</html>

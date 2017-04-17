<%-- 
    Document   : adminpage
    Created on : Apr 17, 2017, 5:51:25 PM
    Author     : ibaez
--%>

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
                    <li><a  href="#">Dashboard</a></li>
                    <li><a class="selected" href="#">Reports</a></li>
                      
                    <li><a href="#">Users</a></li>
                    <li><a href="#">Errors</a></li>
                    <li><a href="#">Stresser</a></li>
                    <li><a href="#">Forums</a></li>
                </ul>
            </div>
            <div class="content">
                <h1>Reports</h1>
                  <%
                            String sql = "select message from complaints";
                            myBeans.DBConnect dbc = new myBeans.DBConnect();
                        %>
                        <%= dbc.display(sql)%>
                <p> </p>


            </div>  	
        </div>
    </div>
</div>


</body>
</html>
<%-- 
    Document   : postpage
    Created on : May 3, 2017, 5:02:27 PM
    Author     : chilliar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="nav_bar.css">
<%@page import="myBeans.DBConnect"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row blue_background blk-border">
            <div class="col-md-2">
                <img class="smaller_image" src="https://upload.wikimedia.org/wikipedia/en/thumb/d/de/CSC_New_Logo_2014.jpg/220px-CSC_New_Logo_2014.jpg" alt="A cute orange cat lying on its back. ">
            </div>
            <div class="col-md-8">
                <a href="index.jsp"><h1 style = "font-size:60px;" class ="title_pad blue_text text-center">CSCompile</h1></a>
            </div>
            <div class="col-md-2">
                <img class="smaller_image right" src="https://upload.wikimedia.org/wikipedia/en/thumb/d/de/CSC_New_Logo_2014.jpg/220px-CSC_New_Logo_2014.jpg" alt="A cute orange cat lying on its back. ">
            </div>
        </div>

        <div class="blk-border">
            <h2 class="white_text text-center b-background d_margin blk-border">Directory</h2>
            <ul>

                <li><a href="index.jsp">Home</a></li>
                <li><a href="coding.jsp">Code</a></li>
                <li><a href="CSnews.jsp">News</a></li>
                <li><a href="books.jsp">Books</a></li>
                <li style = "padding-left: 1100px;"><a href="adminpage.jsp">Admin</a></li>

            </ul>
        </div>
        <div style ='background-color: #eff5f9; margin-top: -10px;'>
            <h1 class="text-center text-primary underline" style = "padding-top:25px">Post Page</h1>

            <div class ="row">
                <!--Left index -->
                
                <div class ="col-md-2" id="side_index">
                    <h3 class="white_text text-center dark_blue_background blk-border">Links</h3>
                    <div class="index_background text-center index_body_margin blk-border">
                        <a class href="#"><h4>About Us</h4></a>
                        <a class href="#"><h4>Support</h4></a>
                        <h4 class="underline">Other Useful Web Sites</h4>
                        <a href="http://stackoverflow.com/"><h4>Stack Overflow</h4></a>
                        <a href="https://www.chegg.com/"><h4>Chegg</h4></a>
                        <a href="https://www.freecodecamp.com/"><h4>Free Code Camp</h4></a>
                        <a href="https://github.com/"><h4>Github</h4></a>
                    </div>
                </div>

                <!-- Posts -->
                <div class ="col-md-8" id="Recent Book Posts">
                    <%
                        String post_ID = request.getParameter("id");
                        String sql = "select Title, Body from posts where Post_ID = '" + post_ID + "'";
                        DBConnect dbConnect = new DBConnect();
                        out.println(dbConnect.displayHTML(sql));
                    %>
                </div>

                <!--Rules-->
                <div class="col-md-2">
                    <h3 class="white_text text-center rules_background blk-border">Rules</h3>
                    <div class="index_background text-center index_body_margin blk-border">
                        <h4 class="underline">Please adhere to these following rules</h4>
                        <h5>Not following these rules will lead to administrator interference</h5>
                        <h5>Multiple violations will lead to user termination</h5>
                        <h5>In order to post and comment, you must <a href="Sign_Up.jsp">register</a></h5>
                        <h5>- Post only relevant/appropriate content</h5>
                        <h5>- Please post your content to the appropriate category</h5>
                        <h5>- When commenting, be helpful and kind</h5>
                        <h5>- Use appropriate language</h5>


                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

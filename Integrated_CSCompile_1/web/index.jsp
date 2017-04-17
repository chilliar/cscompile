<!DOCTYPE html>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
<%@page import="myBeans.DBConnect"%>
<html>
    <script> $(document).ready(function() { 
        $("button").addClass=("well text-center");
        $("#body").addClass=("blue_background");
        $("li").addClass=("li lia");
        });</script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CSCompile Home Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    <!-- Top of front page -->
    <div class="row blue_background">
        <img class="col-md-3 pic_margin" align="middle" src="https://upload.wikimedia.org/wikipedia/en/thumb/d/de/CSC_New_Logo_2014.jpg/220px-CSC_New_Logo_2014.jpg" alt="A cute orange cat lying on its back. ">
        <div class="col-md-6 text-center">
        <h1 class="blue_text text-center">Welcome to CSCompile</h1>
        <h4>CSCompile was created to give Computer Science majors a community</h4>
        <h4>where they could share, help, and create with each other.</h4>
        <h4>Please take a look around. If you want to share or comment, feel</h4>
        <h4>free to join our community and help anyone and everyone.</h4>
        <div class ="row">
            <div class="col-md-6">
                <a href="Sign_Up.jsp"><button class="btn btn-primary btn-block">Register</button></a>
            </div>
            <div class="col-md-6">
                <a href="loginuser.html"><button class="btn btn-primary btn-block">Login</button></a>
            </div>
        </div>
        </div>
        <img class="col-md-3 pic_margin" src="https://upload.wikimedia.org/wikipedia/en/thumb/d/de/CSC_New_Logo_2014.jpg/220px-CSC_New_Logo_2014.jpg" alt="A cute orange cat lying on its back. ">
    </div>
    <!-- Directory code below -->
    <div class="blk-border">
        <h2 class="white_text text-center b-background d_margin blk-border">Directory</h2>
        <ul class="ul">
            <li><a href="books.jsp">Books</a></li>
            <li><a href="coding.jsp">Code</a></li>
            <li><a href="CSnews.jsp">News</a></li>
            <li><a href="adminpage.jsp">Admin Page</a><li>
        </ul>
    </div>
    
    <!--Body of front page, below directory -->
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
        <div class ="col-md-8" id="Recent Posts">
        <h1 class="text-center text-primary underline">Post Feed</h1>
            <%
         String sql = "select Title, Member_ID, Date FROM posts ORDER BY Post_ID DESC";
         DBConnect dbConnect = new DBConnect();
         out.println(dbConnect.displayPosts(sql));
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
        <div class=""
        
        
    </div>
        
       
   </body> 
</html>

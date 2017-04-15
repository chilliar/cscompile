<%-- 
    Document   : Login
    Created on : Feb 11, 2017, 8:46:34 PM
    Author     : chilliar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
     
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="style.css">
        <title>Login Page</title>
    </head>
    <body>
        <div class="row blue_background blk-border">
            <div class="col-md-2">
            <img class="smaller_image" src="https://upload.wikimedia.org/wikipedia/en/thumb/d/de/CSC_New_Logo_2014.jpg/220px-CSC_New_Logo_2014.jpg" alt="A cute orange cat lying on its back. ">
            </div>
            <div class="col-md-8">
            <a href="index.jsp"><h1 class ="title_pad blue_text text-center">CSCompile</h1></a>
            </div>
            <div class="col-md-2">
            <img class="smaller_image right" src="https://upload.wikimedia.org/wikipedia/en/thumb/d/de/CSC_New_Logo_2014.jpg/220px-CSC_New_Logo_2014.jpg" alt="A cute orange cat lying on its back. ">
            </div>
        </div>
        <div class="blk-border">
        <h2 class="white_text text-center b-background d_margin blk-border">Directory</h2>
        <div class="row">
            <div class ="col-md-4">
            <button class="btn btn-primary btn-block">Books</button>
            </div>
            <div class ="col-md-4">
            <button class="btn btn-primary btn-block">Code</button>
            </div>
            <div class ="col-md-4">
            <button class="btn btn-primary btn-block">News</button>
            </div>
        </div>
      </div>
      <div class ="row">
          
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
        <div class="col-md-8">  
        <div class="blk-border text-center">
            <h2 class="blk-border text-primary white_text dark_blue_background">Login</h2>
            <h3>Username <input type="text"></h3>
            <h3>Password  <input type="text"></h3>
            <button class="btn btn-primary btn-block">Submit</button>
            
        </div>
        <h4 class="text-center">Not registered? Register <a href="Sign_Up.jsp">here</a>.</h4>
        <h4 class="text-center">Forgot your password? Click <a href="#">here</a>.</h4>
        </div>
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
    </body>
</html>

<%-- 
    Document   : index
    Created on : Feb 2, 2017, 9:47:18 AM
    Author     : rmaclea1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- External links: w3.css and JQuery libraries -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <!-- Internal links: my.css and my.js -->
    <link rel="stylesheet" href="my.css" />
    <link rel="stylesheet" href="mycss.css">
    <script src="my.js"></script>
    </head>
    <body>
      
     <div class="w3-panel"> 
      
       <div class="w3-center w3-xxxlarge">
       CScompile
       </div>
       <div class="w3-right">
        <form name="Login" action="Loginpage.html">
          <input type="submit" value="Login" />
        </form>
        </div>
       
        <div class="w3-right">
        <form name="SignUp" action="Signuppage.html">
          <input type="submit" value="Sign Up" />
        </form>
        </div>  
        
     </div>

     <div class="w3-panel">
         <ul> 
        <li><a class="active" href="index.jsp">Home Page</a></li> 
        <li class="dropdown"> <a href="books.jsp" class="dropbtn">Books</a> 
            <div class="dropdown-content"> 
                <a href="submitbook.html">Post a Book</a>
                <a href="bookdeals.jsp">Book Deals</a> 
                <a href="bookdownloads.jsp">Free Book Downloads</a>
            </div> 
        </li><li class="dropdown"> <a href="coding.jsp" class="dropbtn">Coding</a> 
            <div class="dropdown-content"> 
                <a href="submitcode.html">Post Code for help</a> 
                <a href="help">Help Others</a> 
                </div>
        </li>
        
        <li class="dropdown"> <a href="CSnews.jsp" class="dropbtn">CS News</a> 
            <div class="dropdown-content"> 
                <a href="submitnews.html">Submit News Article</a>
                <a href="breakingnews.jsp">Breaking News</a> 
                <a href="allnews.jsp">All News</a> 
 
            </div> 
        </li>
        
    </ul> 
    </div>
    <h3></h3> 
    
    
</body>
</html>

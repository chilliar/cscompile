/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myBeans;

import java.sql.*;

/**
 *
 * @author ryian, chris, irving
 */
public class DBConnect {
    

    String driver = "com.mysql.jdbc.Driver";
    String host = "jdbc:mysql://localhost/mycscompile";
    String user = "c";
    String pass = "c";
    
    Connection conn;
    Statement stm;
    ResultSet rst;
    ResultSetMetaData rsmd;
    PreparedStatement pstm;

    private String openDB() {
        try {
            Class.forName(driver); // load driver
            conn = DriverManager.getConnection(host, user, pass);
            stm = conn.createStatement();
        } catch (Exception err) {
            return err.getMessage();

        }
        return "Opened";
    }
    
   

    public String displayPosts(String sql) {
        String post = "";
     
       
        
        try {
            if (openDB().equals("Opened")) {
                rst = stm.executeQuery(sql);
                // create html table
                while (rst.next()) {
                   
                    post += "<h2><a href = 'postpage.jsp?id="+rst.getString(4)+"'>" + rst.getString(1) + "</a></h2>" + "<b>"
                            +"<h4>Posted by Member: " + rst.getString(2) + "</h4>" + "<b>"
                            +"<h4 style = 'border-bottom-style: solid'>Posted: "+ rst.getString(3) + "</h4><b>";
              
                }
            }
        }
        catch (Exception err) {
            return err.getMessage();
        }
        return post;
       

    }
    
    public String updateDB(String sql) {
    try {
      String Welcome_Message = "<h1>updated</h1>";
      String message = openDB();
      if (message.equals("Opened")) {
        stm = conn.createStatement();
        stm.executeUpdate(sql);
        stm.close();
        closeDB();
        return Welcome_Message;
      } else {
        return message;
      }
    } catch (Exception err) {
      return err.getMessage();
    }
  }
    
    public String updateDBuser(String sql) {
    try {
      String Welcome_Message = "<div style ='background-color: #2998E4; padding:10px 0px 10px 0px; margin:0px 2px 0px 2px;'>"
                               +"<h1 style ='color:blue; margin-left:10px'>Welcome to CSCompile!</h1></div> <br> "
                               +"<div style ='background-color: #eff5f9; padding:30px 0px 500px 10px; margin-top:-30px;'>"
                               + "<h2>"
                               + "<a href = 'index.jsp'>Return Home</a></h2>"
                               + "<br><p>You can now post new content and comment on other posts<p></div>";
      String message = openDB();
      if (message.equals("Opened")) {
        stm = conn.createStatement();
        stm.executeUpdate(sql);
        stm.close();
        closeDB();
        return Welcome_Message;
      } else {
        return message;
      }
    } catch (Exception err) {
      return err.getMessage();
    }
  }
    
    public String updateDBpost(String sql) {
    try {
      String Post_Message = "<div style ='background-color: #2998E4; padding:10px 0px 10px 0px; margin:0px 2px 0px 2px;'>"
                            + "<h1 style ='color:blue; margin-left:10px'>Your post has been submitted</h1></div> <br> "
                            +"<div style ='background-color: #eff5f9'>"
                            + "<h2 style='padding:30px 0px 500px 10px; margin-top:-30px;'>"
                            + "<a href = 'index.jsp'>Return Home</a></h2>";
      String message = openDB();
      if (message.equals("Opened")) {
        stm = conn.createStatement();
        stm.executeUpdate(sql);
        stm.close();
        closeDB();
        return Post_Message;
      } else {
        return message;
      }
    } catch (Exception err) {
      return err.getMessage();
    }
  }
     private void closeDB() {
    try {
      conn.close();
    } catch (Exception err) {
    }
  }
     
     public String queryDB(String sql, String ... args) {
    String CsvMessage = "";
    int columns;
    try {
      String message = openDB();
      if (message.equals("Opened")) {
        pstm = conn.prepareStatement(sql);
        int j=1;
        for (String d : args) 
          pstm.setString(j++, d);
        rst = pstm.executeQuery();
        rsmd = rst.getMetaData();
        columns = rsmd.getColumnCount();
        while (rst.next()) {
          for (int i = 1; i <= columns; i++) {
            CsvMessage += rst.getString(i) + ", ";
          }
          CsvMessage += "<br>";
        }
        closeDB();
        return CsvMessage;
      } else {
        return message;
      }
    } catch (Exception e) {
      return e.getMessage();
    }
  }

     public String displayHTML(String sql, String ... args) {
    String html = "";
    int columns;
    try {
      String message = openDB();
      if (message.equals("Opened")) {
        pstm = conn.prepareStatement(sql);
        int j=1;
        for (String d : args) 
          pstm.setString(j++, d);
        rst = pstm.executeQuery();
        rsmd = rst.getMetaData();
        columns = rsmd.getColumnCount();
        while (rst.next()) {
       
          html += "<h2 class = 'text-primary' style = 'text-decoration: underline'>"+ rst.getString(1)+"</h2><br>"
                  +"<div style = 'padding-left: 20px' class = 'w3-container w3-grey' >"
                  +"<h3>" + rst.getString(2) + "</h3><br>"
                  +"</div>";
                  
          
          
          html += "<br>";
        }
        closeDB();
        return html;
      } else {
        return message;
      }
    } catch (Exception e) {
      return e.getMessage();
    }
  }

     
     public String display(String sql) {
        String html = "";
        try {
            if (openDB().equals("Opened")) {
                rst = stm.executeQuery(sql);
                // create html table
                while (rst.next()) {
                    html += "<br>" + rst.getString(3);
                }
            }
}
        catch (Exception err) {
            return err.getMessage();
        }
        return html;

    }
public String Search(String sql) {

    String html = "";
    try {
      conn = DriverManager.getConnection(host, user, pass);

      stm = conn.createStatement();

      System.out.print("Please enter name to search: ");

      rst = stm.executeQuery(sql);

      while (rst.next()) {
        System.out.println("Firsst name: " + rst.getString("Firstname"));
        System.out.println("Last name: " + rst.getString("Lastname"));
        System.out.println("Email: " + rst.getString("Email"));
        System.out.println("Member ID: " + rst.getString("Member_ID"));
        System.out.println("Status: " + rst.getString("Status"));
      }

    } catch (Exception e) {
      System.out.println("ERROR: " + e.getMessage());
    }
    return html;
  }

  public String displayStatus(String sql) {
    String html = "<form name='status' action='statusAction.jsp'>";
    html += "<table>";
    try {
      if (openDB().equals("Opened")) {
        rst = stm.executeQuery(sql);
        // create html table
        while (rst.next()) {
          html += "<tr><td>" + rst.getString(1) + "</td>"
                  + "<td><select name = '" + rst.getString(1) + "'>"
                  + "<option value=0>0</option> "
                  + "<option value=1>1</option> "
                  + "<option value=2>2</option> "
                  + "</select></td></tr>";
        }
        html += "</table><input type='submit' value='Submit' /> </form>";
      }
    } catch (Exception err) {
      return err.getMessage();
    }
    return html;

  }

  public String displayComplaints(String sql) {
    String html = "";
    try {
      if (openDB().equals("Opened")) {
        rst = stm.executeQuery(sql);
        // create html table
        while (rst.next()) {
          html += "<p><b>Complaint: </b> " + rst.getString(2) + "</p>";
          html += "by " + rst.getString(1) + "<br>";
          html += "<p><b>Body:</b> " + rst.getString(4) + "</p>";
          html += "poster: " + rst.getString(3) + "<br><br>";
        }
      }
    } catch (Exception err) {
      return err.getMessage();
    }
    return html;

  }

}



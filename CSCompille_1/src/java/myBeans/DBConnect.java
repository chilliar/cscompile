/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myBeans;

import java.sql.*;

/**
 *
 * @author chilliar
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
                   
                    post += "<h2><a href = #>" + rst.getString(1) + "</a><h2>" + "<b>"
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
      String Welcome_Message = "<h1>Welcome to CSCompile!";
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
    
     private void closeDB() {
    try {
      conn.close();
    } catch (Exception err) {
    }
  }
}


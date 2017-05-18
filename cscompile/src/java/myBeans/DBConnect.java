/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myBeans;

import java.sql.*;
import java.util.Scanner;

/**
 *
 * @author ibaez
 */
public class DBConnect {

  String driver = "com.mysql.jdbc.Driver";
  String host = "jdbc:mysql://localhost:3306/cscompile";
  String user = "cscompile";
  String pass = "cscompile";

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

  public String updateDB(String sql) {
    try {
      String Welcome_Message = "<h1>Status Updated";
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

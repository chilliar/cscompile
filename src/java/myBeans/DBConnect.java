/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myBeans;

import java.sql.*;

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

    public String display(String sql) {
        String html = "";
        try {
            if (openDB().equals("Opened")) {
                rst = stm.executeQuery(sql);
                // create html table
                while (rst.next()) {
                    html += "<br>" + rst.getString(1);
                }
            }
        }
        catch (Exception err) {
            return err.getMessage();
        }
        return html;

    }
}

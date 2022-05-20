/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khoatd.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Ticket 1
 */
public class DBUtils {
    public static Connection getConnection() throws NamingException, SQLException {
        Context context = new InitialContext();
        Context tomCatContext = (Context) context.lookup("java:comp/env");
        DataSource ds = (DataSource) tomCatContext.lookup("DataSource");
        Connection connect = ds.getConnection();
        return connect;
    }

//    public static Connection getConnectionn() throws ClassNotFoundException, SQLException {
//        Connection connect = null;
////        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        String host = "localhost";
//        String port = "5432";
//        String dbname = "postgres";
//      //  Class.forName("com.example.jdbc.Driver");
//        String user = "postgres";
//        String pass = "Vivuong@1511";
//        String url = "jdbc:postgresql://" + host + ":" + port + "/" + dbname + "?loggerLevel=OFF";
//        connect = DriverManager.getConnection(url, user, pass);
//        return connect;
//    }

}

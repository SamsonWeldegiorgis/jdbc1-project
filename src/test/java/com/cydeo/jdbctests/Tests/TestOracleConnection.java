package com.cydeo.jdbctests.Tests;

import java.sql.*;

public class TestOracleConnection {

    /*
    How to init variable
    Opt + enter --> introduce local variable --> Mac
    Alt + enter --> introduce local variable --> win

    /********
    host : 54.196.34.93
    port : 1521
    SID : XE
    String dbUserName="hr";
    String dbPassWord = "hr";

    jdbc url AKA connection string
    Syntax :
    jdbc : vendor name : driveType @YourHost:PORT:SID

    String dbUrl="jdbc:oracle:thin:@54.196.34.93 :1521:XE"
     /********


     */

    public static void main(String[] args) throws SQLException {

        String dbUrl="jdbc:oracle:thin:@54.196.34.93 :1521:XE";
        String dbUserName="hr";
        String dbPassWord = "hr";

        /// DriverManger = clas getConnection is used to make connnection with database,,
        Connection conn = DriverManager.getConnection(dbUrl, dbUserName,dbPassWord);

        // Statement help us to execute query
        Statement statement = conn.createStatement();

        // Result help to store our db that we get after query execution
        // rs is just a variable / object name
        ResultSet rs = statement.executeQuery("select * from regions");

        /*
//
//         */
//        /*
//        How to run query ?
//        - choose query
//        - CMD +Enter or ctrlEnter
//        -- Choose session
//         *///
//        // next() -- > move to cursor in next line
//        rs.next();
//
//        // getInt() will return INt if we have Int value in that column
//        /// index starts from 1 with SQL tables
//
//        //  getInt(columnLabel)
//
//        // 1
//        System.out.println(rs.getString(1));
//        System.out.println(rs.getString("REGION_ID"));//
//        // get me region name  // 2
//        System.out.println(rs.getString(2));
//        System.out.println(rs.getString("Region_name"));
//
//        // move to the 2 row
//        rs.next();
//
//        // 2 - Americas
//        System.out.println(rs.getInt("Region+ID") + " - " + rs.getString("Region_name"));
////
//        // move to the 3 row
//        rs.next();//
//        // 3 - Asia
//        System.out.println(rs.getInt("Region+ID") + " - " + rs.getString("Region_name"));//
//
//        // move to the 4 row
//        rs.next();//
//        // 4 - Middle Easet and Africa
//        System.out.println(rs.getInt("Region+ID") + " - " + rs.getString("Region_name"));

        while (rs.next()){
            System.out.println(rs.getInt("Region_ID") + " - " + rs.getString("Region_name"));
        }

        // close conn

        rs.close();
        statement.close();
        conn.close();
    }
}

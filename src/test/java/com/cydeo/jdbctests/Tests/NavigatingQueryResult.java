package com.cydeo.jdbctests.Tests;

import java.sql.*;

public class NavigatingQueryResult {


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
     /********    oracle is our vendor


     */

    public static void main(String[] args) {

        String dbUrl = "jdbc:oracle:thin:@54.196.34.93 :1521:XE";
        String dbUserName = "hr";
        String dbPassWord = "hr";

        try {
            Connection con = DriverManager.getConnection(dbUrl, dbUserName, dbPassWord);

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery("SELECT * from REGIONS");

            rs.next();
            System.out.println("Region ID on first row is " + rs.getString(1));
            System.out.println("Region ID on first row is " + rs.getString("REGION_ID"));
            System.out.println("Region ID on first row is " + rs.getString(2));
            System.out.println("Region ID on first row is " + rs.getString("REGION_NAME"));

            rs.next();
            System.out.println("Region Name on SECOND Rows is: " + rs.getString("REGION_NAME"));
            rs.next();
            System.out.println("Region Name on THIRD Rows is: " + rs.getString("REGION_NAME"));

            System.out.println("Do we have more data " + rs.next());
            System.out.println("Region Name on FOURTH Rows is: " + rs.getString("REGION_NAME"));

            System.out.println("Do we have more data " + rs.next());
//            System.out.println("Region Name on AFTER LAST Rows is: " + rs.getString("REGION_NAME"));

//            rs.previous();




        } catch (SQLException e) {
            System.out.println("Error has occured: " + e.getMessage());
        }

    }
    }


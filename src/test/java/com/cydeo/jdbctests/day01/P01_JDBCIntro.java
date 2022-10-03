package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {

    String dbUrl = "jdbc:oracle:thin:@54.211.225.58:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {


        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement();

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is not null");

//        ResultSet rs1= statement.executeQuery("select STREET_ADDRESS||'-'||POSTAL_CODE||'-'||CITY||'-'||COUNTRY_ID as Full_Address from LOCATIONS");

         // 10-Administration-200-1700

        // getting each row dynamically

        while (rs.next()){  // check your next row,,
            System.out.println(rs.getInt(1) + "-" + rs.getString(2)+"-"+rs.getInt(3)+"-"+rs.getInt(4));
        }

        /*
        Can we use more than one query in one connection to get data ?
        YES
         */

        rs= statement.executeQuery("select * from REGIONS");

        //1. Europe
        //1. America

        while(rs.next()){
            System.out.println(rs.getInt(1) + "- "+ rs.getString(2));
            while(rs.next()){
            System.out.println(rs.getInt(2) + "- "+ rs.getString(3));



//        System.out.println("Region Name on SECOND Rows is: " + rs.getString("REGION_NAME"));
//        rs.next();
//        System.out.println("Region Name on THIRD Rows is: " + rs.getString("REGION_NAME"));


       //close conn
        rs.close();
        statement.close();
        conn.close();

    }
}}}


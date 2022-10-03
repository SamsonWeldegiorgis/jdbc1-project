package com.cydeo.jdbctests.Tests;

import java.sql.*;

public class NavigatingResultSet1 {
    public static void main(String[] args) {



    String dbUrl = "jdbc:oracle:thin:@54.196.34.93 :1521:XE";
    String dbUserName = "hr";
    String dbPassWord = "hr";

        try{
            Connection con = DriverManager.getConnection(dbUrl,dbUserName,dbPassWord);

            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

            ResultSet rs = stmt.executeQuery("select * from REGIONS ");

            /*
            ResultSet methods to navigate rows
            * next ()
            * previous()
            *first()
            * last ()
            * beforeFirst
            * afterlast()
            *Absolute (8)
             */

            rs.first();
            System.out.println(rs.getString("REGION_ID") + "  " + rs.getString("REGION_NAME"));
            rs.last();
            System.out.println(rs.getString("REGION_ID") + "  " + rs.getString("REGION_NAME"));
            rs.previous();
            System.out.println(rs.getString("REGION_ID") + "  " + rs.getString("REGION_NAME"));
            rs.absolute(2);
            System.out.println(rs.getString("REGION_ID") + "  " + rs.getString("REGION_NAME"));

            rs.beforeFirst();
            rs.next();
            System.out.println(rs.getString("REGION_ID") + "  " + rs.getString("REGION_NAME"));
            rs.afterLast();
            rs.previous();
            System.out.println(rs.getString("REGION_ID") + "  " + rs.getString("REGION_NAME"));




    }
        catch (SQLException e){
        System.out.println("Error has occured " + e.getMessage());
    }



}}

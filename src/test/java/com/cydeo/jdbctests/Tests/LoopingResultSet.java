package com.cydeo.jdbctests.Tests;

import java.sql.*;

public class LoopingResultSet {
    public static void main(String[] args) {


        String dbUrl = "jdbc:oracle:thin:@54.196.34.93 :1521:XE";
        String dbUserName = "hr";
        String dbPassWord = "hr";

        try {
            Connection con = DriverManager.getConnection(dbUrl, dbUserName, dbPassWord);

            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

            ResultSet rs = stmt.executeQuery("select * from REGIONS");

            // next methoh is movoiingn the cursor to the next line and returninng tru false accoroding
            // to wherether we have next row


            while (rs.next()) {
                System.out.println(rs.getString(1) + " | " + rs.getString(2));
            }
            rs.beforeFirst();
            while (rs.next()) {
                System.out.println("Row Number is : " + rs.getRow());
                System.out.println(rs.getString(1) + " | " + rs.getString(2));
            }


            // getting row numberv --->> Movee cursor to the last row and get the row number

            rs.last();
            System.out.println("Row count is :  " + rs.getRow());


        } catch (
                SQLException e) {
            System.out.println("Error has occured " + e.getMessage());
        }
    }}

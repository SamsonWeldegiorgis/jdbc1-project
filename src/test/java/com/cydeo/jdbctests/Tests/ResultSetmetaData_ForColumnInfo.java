package com.cydeo.jdbctests.Tests;

import java.sql.*;

public class ResultSetmetaData_ForColumnInfo {
    public static void main(String[] args) {



    String dbUrl = "jdbc:oracle:thin:@54.196.34.93 :1521:XE";
    String dbUserName = "hr";
    String dbPassWord = "hr";

        try {
            Connection con = DriverManager.getConnection(dbUrl, dbUserName, dbPassWord);
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stmt.executeQuery("select * from EMPLOYEES ");


            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();
//        String firstColName = rsmd.getColumnName(1);
//
//            System.out.println("ColumnCount : " + columnCount);
//            System.out.println("FirstColName : " + firstColName);
//
            for (int colIndex = 1; colIndex <= columnCount; colIndex++) {
                System.out.print(rsmd.getColumnName(colIndex) + " \t");
            }

            System.out.println();




            // Printing all data in one row
             while (rs.next()) {
                 for (int colIndex = 1; colIndex <= columnCount; colIndex++) {

                     System.out.print(rs.getString(colIndex) + "  \t");

                 }
                 System.out.println();
             }

    }
        catch (
    SQLException e){
        System.out.println("Error has occured " + e.getMessage());
    }
}}

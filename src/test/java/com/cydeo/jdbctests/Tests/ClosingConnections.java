package com.cydeo.jdbctests.Tests;

import java.sql.*;

public class ClosingConnections {
    public static void main(String[] args) {


        String dbUrl = "jdbc:oracle:thin:@54.196.34.93 :1521:XE";
        String dbUserName = "hr";
        String dbPassWord = "hr";

//        Connection con = null;
//        Statement stmt  = null;
//        ResultSet rs = null;

        // try with resouces -- only work with auto closable resources
        try    (    Connection con = DriverManager.getConnection(dbUrl, dbUserName,dbPassWord);
                  Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                 ResultSet rs = stmt.executeQuery("select * from REGIONS "))

                {

                    rs.next();
                    System.out.println(rs.getString(2));

              } catch (SQLException e){
            System.out.println("Error has occures : " + e.getMessage());



//        try {
//             con = DriverManager.getConnection(dbUrl, dbUserName, dbPassWord);
//             stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
//             rs = stmt.executeQuery("select * from EMPLOYEES ");
//
//            System.out.println("ALL SUCCESSFULL");
//
//        } catch (SQLException e){
//            System.out.println("Error has occures : " + e.getMessage());
//        } finally {
//
//        try {
//
//
//            if (rs!= null)   rs.close();
//            if (stmt!= null) rs.close();
//            if (con != null) rs.close();
//
//        } catch (SQLException e ){
//            System.out.println("Error has occured : " + e.getMessage());
//        }


    }}}

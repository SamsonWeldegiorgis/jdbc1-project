package com.cydeo.jdbctests.day01;

import java.sql.*;

public class Practice_ConnFirst {
    public static void main(String[] args) {

        String url = "jdbc:oracle:thin:@54.196.34.93 :1521:XE";
        String userName = "hr";
        String password = "hr";

        Connection con = null;
        Statement stat = null;
        ResultSet rs = null;

        try {
            con = DriverManager.getConnection(url, userName, password);
            stat = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            rs = stat.executeQuery("select FIRST_NAME, LAST_NAME from EMPLOYEES");

            rs.next();
            System.out.println(rs.getString(1) + " ~ " + rs.getString(2));
            rs.next();
            System.out.println(rs.getString(1) + " ~ " + rs.getString(2));
            rs.last();
            System.out.println(rs.getString(1) + " ~ " + rs.getString(2));
            System.out.println("===============ABsolute ============");
            rs.absolute(10);
            System.out.println(rs.getString(1) + " ~ " + rs.getString(2));
            System.out.println("===============Previous ============");
            rs.previous();
            System.out.println(rs.getString(1) + " ~ " + rs.getString(2));

            System.out.println("===============Print all  ============");
            while (rs.next()) {
            System.out.println(rs.getString(1) + " ~ " + rs.getString(2));



            }

//                System.out.println();


            System.out.println("Connection Succeed");
        } catch (SQLException e) {
            System.out.println("ERROR was found : " + e.getMessage());

        } finally {
            try {
                rs.close();
                con.close();
                stat.close();
                System.out.println("Connection success");
            } catch (SQLException e) {
                System.out.println("ERROR : " + e.getMessage());
            }
        }
    }}


package com.cydeo.jdbctests.day01;

import java.sql.*;

public class Practice_MetaDatas {

    public static void main(String[] args) throws SQLException {

        String url = "jdbc:oracle:thin:@54.196.34.93 :1521:XE";
        String userName = "hr";
        String password  = "hr";

            Connection con = DriverManager.getConnection(url, userName, password);
            Statement stat = con.createStatement();
            ResultSet rs = stat.executeQuery("select * from EMPLOYEES");

            rs.next();
            System.out.println(rs.getString(1) + " ~ " + rs.getString(2));

            // metadata
            ResultSetMetaData rsmd = rs.getMetaData();

            // how many column data
            int colCount = rsmd.getColumnCount();
            System.out.println(colCount);

            // 5th column
            System.out.println(rsmd.getColumnName(5));

            System.out.println("===============Print all  ============");
            while (rs.next()) {
                for (int i = 1; i <= rsmd.getColumnCount(); i++) {
//                    System.out.println(rsmd.getColumnName(i));
                    System.out.print(rsmd.getColumnName(i) + " ~ " + rs.getString(i) + "\t");
//                    System.out.print(rs.getString(i) + "\t");


                }
                System.out.println();
            }


            rs.close();
            con.close();
            stat.close();


        }
    }

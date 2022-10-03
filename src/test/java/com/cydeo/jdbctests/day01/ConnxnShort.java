package com.cydeo.jdbctests.day01;

import com.cydeo.jdbctests.Utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class ConnxnShort {
        public static void main(String[] args) {


                String url = "jdbc:oracle:thin:@54.196.34.93 :1521:XE";
                String useName = "hr";
                String passWord = "hr";


                try {
                        Connection con = DriverManager.getConnection(url, useName, passWord);
                        System.out.println("Connection succeed");
                        Statement stat = con.createStatement( ResultSet.TYPE_SCROLL_INSENSITIVE , ResultSet.CONCUR_READ_ONLY);
                        ResultSet rs = stat.executeQuery("Select * from EMPLOYEES");


//                        rs.next();
//                        System.out.println(rs.getInt("Region_id" ) + "~ "+ rs.getString("Region_Name"));

                        rs.next();
                        System.out.println(rs.getInt(1 ) + "~ "+ rs.getString(2));


                        ResultSetMetaData rsmd = rs.getMetaData();
                        int colCount = rsmd.getColumnCount();
                        System.out.println("colCount = " + colCount);

                        String colName = rsmd.getColumnName(5);
                        System.out.println("colName = " + colName);

                        System.out.println(" ============Print all COLUMNS======");
                        for (int i = 1; i <= colCount; i++) {

                                System.out.println("rsmd.getColumnCount(i) = " + rsmd.getColumnName(i));

                        }

                        System.out.println(" ============Print all ROWS======");

                        while (rs.next()){

                                for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                                        System.out.print( rs.getRow() +  " ~ :" + rs.getString(i) ); // all datas

//                                        System.out.println( i+ " ~ :" + rsmd.getColumnName(i)); // column


                                }
                                System.out.println();





                        }






                } catch (SQLException e) {
                        System.out.println("Error Connection : " + e.getMessage());
                }


        }

}






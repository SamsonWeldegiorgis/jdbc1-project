package com.cydeo.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P01_ListOfMap {

    String dbUrl = "jdbc:oracle:thin:@54.211.225.58:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        System.out.println("============ROW============");
        Map<String, Object> rowMap = new HashMap<>();
        rowMap.put("first_name", "Steven");
        rowMap.put("last_name", "King");
        rowMap.put("salary", 24000);

        System.out.println(rowMap);

        System.out.println("============ROW1============");
        Map<String, Object> rowMap1 = new HashMap<>();
        rowMap1.put("first_name", "Neena");
        rowMap1.put("last_name", "Kochhar");
        rowMap1.put("salary", 17000);

        System.out.println(rowMap1);

        /*
        it will keep continue all the way bottom
         */
        List<Map<String, Object>> dataList = new ArrayList<>();

        dataList.add(rowMap);
        dataList.add(rowMap1);

        // Give me last name of Steven
        System.out.println(dataList.get(0).get("last_name"));

    }


    @Test
    public void task2() throws SQLException {
        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select first_name,last_name,salary from employees where rownum<6");
        ResultSetMetaData rsmd = rs.getMetaData();

        rs.next();

        Map<String, Object> rowMap1 = new HashMap<>();
        rowMap1.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap1.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap1.put(rsmd.getColumnName(3), rs.getInt(3));

        System.out.println(rowMap1);
        rs.next();


        System.out.println("--- ROW MAP 2 ---");
        Map<String, Object> rowMap2 = new HashMap<>();
        rowMap2.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3), rs.getInt(3));

        System.out.println(rowMap2);

        /**
         *
         * it will keep continue all the wy bottom
         *
         */

        List<Map<String, Object>> dataList = new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);


        // Give me last name of Steven
        System.out.println(dataList.get(0).get(rsmd.getColumnName(2)));

        // Print Maps from the list

        System.out.println("==========Print Maps from the list================");

        for (Map<String, Object> eachrow : dataList) {
            System.out.println(eachrow);

        }
    }
            @Test
            public void task() throws SQLException {
                // DriverManager class getConneciton is used for to make connection with database
                Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

                // Statemet helps us to execute Query
                Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

                // ResutSet stores data that we get from after query execution
                // rs is just a variable/object name
                ResultSet rs = statement.executeQuery("select first_name,last_name,salary from employees where rownum<6" );
                ResultSetMetaData rsmd = rs.getMetaData();


                List<Map<String, Object>> dataList = new ArrayList<>();

                //Iterate each row dynamically
                while (rs.next()){
                    Map<String,Object> rowMap = new HashMap<>();

                    // fill this Map dynamically
                    for (int i = 1; i <= rsmd.getColumnCount(); i++){          // rsmd = giveus the colName & ColCount
                        rowMap.put(rsmd.getColumnName(i), rs.getString(i));   // rs =  gives the value

                    }
                    /// addd this ready Map into List
                    dataList.add(rowMap);
                }







                //close conn
                rs.close();
                statement.close();
                conn.close();
            }



    }
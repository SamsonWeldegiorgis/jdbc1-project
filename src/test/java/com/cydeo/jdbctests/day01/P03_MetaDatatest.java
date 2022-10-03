package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaDatatest {


    String dbUrl = "jdbc:oracle:thin:@54.211.225.58:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select * from LOCATIONS"); // employees / regions


        // Database Metadata  --- > Information about dadtabase
        DatabaseMetaData databaseMetaData = conn.getMetaData();

        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductVersion());
        System.out.println(databaseMetaData.getDriverName());
        System.out.println(databaseMetaData.getDriverVersion());





        /*
        We are not gonna use it for testing purpose. Just information about database
         */

        // ResultSetMetadata ----------Data about Table

        ResultSetMetaData rsmd = rs.getMetaData();

        //How many column we have
        System.out.println("========= column number =========");
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);

        System.out.println("========= column name =========");
        // How is the column name 5th column ,,,,,,it will returen columnName based on provided index
        System.out.println(rsmd.getColumnName(5));


        // print all column name dynmically
        System.out.println("========= Print all the culumn Dynamically=======");
        System.out.println(rsmd.getColumnCount());
        for (int i = 1; i <= columnCount; i++) {
            System.out.println("RHUS : " + rsmd.getColumnName(i));

 /*

        - HOW TO GET DATA DYNAMICLY

           Resultset --> Table Content

                rs.next()          --> with while loop we are getting data from all table.
                                        It will jump to each row toget data
                rs.getString(index) --> To get related cell content
                rs.getString(columname)

           ResultsetMetadata -->Info about table

                rsmd.getColumnCount() --> it will return columnCount
                rsmd.getColumnName(index) --> it will give provided index ColumnName


         */
        }

            System.out.println("========= Print all Table content dynamically =======");
            // print all Table content dynmically ....
            // iterate each row with while loop....
            while (rs.next()) {
                // iterate each column dynamically
                for (int i = 1; i <=rsmd.getColumnCount(); i++) {

                    System.out.print(rsmd.getColumnName(i) + " - " + rs.getString(i));


                }
                System.out.println();


            }


            //close conn
            rs.close();
            statement.close();
            conn.close();

        }
    }


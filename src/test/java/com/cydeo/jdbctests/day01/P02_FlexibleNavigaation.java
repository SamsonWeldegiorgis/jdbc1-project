package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigaation {

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
        ResultSet rs = statement.executeQuery("select first_name,last_name from employees" );

        System.out.println("========= First Row  ==============");
        rs.next();
        System.out.println(rs.getString(1) +" - " + rs.getString(2));
        System.out.println("========= Second Row  ==============");
        rs.next();
        System.out.println(rs.getString(1) +" - " + rs.getString(2));
        System.out.println("========= Thirda Row  ==============");
        rs.next();
        System.out.println(rs.getString(1) +" - " + rs.getString(2));


             /*
          ResultSet.TYPE_SCROLL_INSENSITIVE --> to be able to scroll your cursor dynamicly and jump to spesific rows
                                              we are gonna use that as a parameter into createStatement
        ResultSet.CONCUR_READ_ONLY        --> we are saying I am not gonna update anything into database
         */

        // last row  -- moves the cursor to the last row in this ResusltSet Object
        rs.last();
        System.out.println(rs.getString(1) +" - " + rs.getString(2));  // Elenni


        // getRow  -- Retrieves the current row number
        System.out.println("============= Get Row ==============");
        int row = rs.getRow() ;
        System.out.println(row);   // 107


        // jump to row 10;;;

        // third row
        System.out.println("========= Row 10 /  Absolut ==============");
        rs.absolute(10);
        System.out.println(rs.getString(1) +" - " + rs.getString(2));  // David
        System.out.println(rs.getRow());

        // Previous  -- moves the cursor to the previous row in this ResultSet objectt
        System.out.println("========= Previous  ==============");
        rs.previous();
        System.out.println(rs.getString(1) +" - " + rs.getString(2));
        System.out.println(rs.getRow());  // 9



        //Print all
        System.out.println("========= Print All Table Dynamic  ==============");
//        // it is the position before first row
//        rs.beforeFirst();
//        // to print each row dynamically
//       while (rs.next()) {
//           System.out.println(rs.getString(1) + " - " + rs.getString(2));


           //to print each row dynamjically
           System.out.println("========= ==============");
           // it is the position before first row
           rs.beforeFirst();
           // to print each row dynamically
           while (rs.next()) {
               System.out.println(rs.getRow() + " - " + rs.getString(1) + " - " + rs.getString(2));



       }



        //close conn
        rs.close();
        statement.close();
        conn.close();

    }}
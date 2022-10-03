package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.Utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P02_DBUtilPractice {

    @Test
    public void task1(){
        // create Db connection
        DB_Util.createConnection();

        // run query
        DB_Util.runQuery("Select first_name, last_name, salary from employees");

        // Get all data as List of Map
        List<Map<String, String >>  allRowAsListOfMap =   DB_Util.getAllRowAsListOfMap();

        for(Map<String, String> eachRowMap : allRowAsListOfMap){
            System.out.println(eachRowMap);
        }

        System.out.println(DB_Util.getFirstRowFirstColumn());  // Steven
        System.out.println(DB_Util.getColumnCount());  // 3 columns



        // destroy - clclose connection
        DB_Util.destroy();

    }

    @Test
    public  void task2(){
        // create coonn
        DB_Util.createConnection();


        // run query
        /// select count(*) from employees
        DB_Util.runQuery("select count(*) from employees");


        // how many employee wee have
        System.out.println(DB_Util.getFirstRowFirstColumn());  // 107

        System.out.println(DB_Util.getCellValue(1, 1));  // 107


        // destroy - clclose connection
        DB_Util.destroy();
    }
}

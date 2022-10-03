package com.cydeo.jdbctests.day01;

import com.cydeo.jdbctests.Utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class MySQL_Practice {



    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username = "library2_client";
    String password = "6s2LQQTjBcGFfDhY";

     @Test
             public void task1() {

        // create  connection
         DB_Util.createConnection();
         System.out.println("Connection succeed");


         // QUary

         DB_Util.runQuery("SELECT * from Employees");
         List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();
         for (Map<String, String> eachRow : allRowAsListOfMap) {
             System.out.println(eachRow);
             // destroy close conne
             DB_Util.destroy();

         }
     }

         @Test
         public void LibraryUsersTest () {

         DB_Util.createConnection(url, username, password);
         DB_Util.runQuery("select count(*) from users");

         String expectedCount = DB_Util.getCellValue(1, 1);
         String actualCount =  "877";

             Assertions.assertEquals(actualCount, expectedCount);


             DB_Util.destroy();
        }
        @Test
    public void booksCountTest () {

         DB_Util.createConnection(url,username, password);
         DB_Util.runQuery("select count(*) from books");

         String expectedCount = DB_Util.getCellValue(1,1);
         String actualCount = "3875";

         Assertions.assertEquals(actualCount, expectedCount);

            DB_Util.destroy();
        }


     }
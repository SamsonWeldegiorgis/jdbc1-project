package com.cydeo.jdbctests.day01;

import java.io.IOException;
import java.sql.*;
import java.util.*;

public class Practiceee {
    public static void main(String[] args) {

        ArrayList<Integer> bucket = new ArrayList<>(Arrays.asList(-5,6,65,11,0,8));
        System.out.println(processLogs(bucket));
    }
        public static ArrayList<Integer> processLogs (ArrayList<Integer> arr) {
            // Write your code here

            int swapnum = 1 ;
            while (swapnum >0){
                swapnum = 0 ;

            for (int i = 0; i < arr.size()-1; i++) {
                if(arr.get(i) > arr.get(i+1)){
                     int a = arr.get(i) ;


                     arr.set(i , arr.get(i+1));
                     arr.set(i+1, a);

                        swapnum++;


                    }}}
            return arr;



                }}




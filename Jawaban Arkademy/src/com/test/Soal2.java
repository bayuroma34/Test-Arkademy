package com.test;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Soal2 {
    public static String USER = "^[A-z0-9_-]{5,9}$";
    public static String PASS = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*])(?=.{8,})";
    public static void main(String args[]){
        List<String> username = new ArrayList<String>();
        List<String> password = new ArrayList<String>();

        username.add("@sony");
        username.add("Ayu99v");

        password.add("p@ssW0rd#");
        password.add("C0d3YourFuture!#");

        Pattern pattern1 = Pattern.compile(USER);
        Pattern pattern2 = Pattern.compile(PASS);

        for (String value : username){
            Matcher matcher = pattern1.matcher(value);
            if(matcher.matches()){
                System.out.println(value +" is valid");
            }else{
                System.out.println(value +" is invalid");
            }
        }
        for (String value : password){
            Matcher matcher2 = pattern2.matcher(value);
            if(matcher2.matches()){
                System.out.println(value +" is valid");
            }else{
                System.out.println(value +" is invalid");
            }
        }
    }
}
package com.test;

import java.lang.reflect.Array;
import java.util.Scanner;
import java.util.Arrays;
import java.util.ArrayList;

public class Soal5 {
    static String RandomKalimat(int n)
    {
        String ListKalimat= "0123456789" + "abcdefghijklmnopqrstuvxyz";
        StringBuilder sb = new StringBuilder(n);

        for (int i = 0; i < n; i++) {
            int index = (int)(ListKalimat.length()  * Math.random());

            sb.append(ListKalimat.charAt(index));
        }
        return sb.toString();
    }

    public static void main(String[] args)
    {
        int n;
        Scanner s = new Scanner(System.in);
        System.out.print("Banyak Cetak:");
        n = s.nextInt();

        ArrayList<String> result = new ArrayList<String>();

        for (int i=0; i<n;i++){
                String item = "";
                do {
                    item = Soal5.RandomKalimat(32);
                } while(result.contains(item));
                result.add(item);
                System.out.println(item);
        }
    }

}

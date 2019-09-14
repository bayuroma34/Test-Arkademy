package com.test;

import java.util.Scanner;
public class Soal4 {
    public static void main(String[] args) {
        int radius;
        Scanner read = new Scanner(System.in);
        System.out.print("Masukkan radius : ");
        radius = read.nextInt();
        for (int i = 1; i <= radius; i++) {
            for (int j = 1; j <= radius; j++) {
                if (j == 1 || j == radius || i== (radius/2)+1) {
                    System.out.print("* ");
                }
                else {
                    System.out.print("= ");
                }

            }
            System.out.println("");
        }

    }
}
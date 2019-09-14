package com.test;


import java.text.NumberFormat;
public class Soal3 {

    static int BanyakKata(String Kata, String Kalimat) {
        int a = Kata.length();
        int b = Kalimat.length();
        int jumlah = 0;


        for (int i = 0; i <= b - a; i++) {

            int j;
            for (j = 0; j < a; j++) {
                if (Kalimat.charAt(i + j) != Kata.charAt(j)) {
                    break;
                }
            }

            if (j == a) {
                jumlah++;
                j = 0;
            }
        }
        return jumlah;
    }

    static public void main(String[] args) {
        String Kalimat = "banananana";
        String Kata = "nana";
        System.out.println(BanyakKata(Kata, Kalimat));
    }

}

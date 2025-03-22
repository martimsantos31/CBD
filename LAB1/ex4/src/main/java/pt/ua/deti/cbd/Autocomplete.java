package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;

import java.io.*;
import java.util.Scanner;

public class AutoComplete {

    public static String path = "names.txt";
    public static String NAMES_KEY = "names:1";

    public static void main( String[] args ) throws IOException {
        Jedis jedis = new Jedis();
        Scanner sc = new Scanner(System.in);

        jedis.flushAll();

        BufferedReader br = new BufferedReader(new FileReader(path));
        String line = "";

        while(true){
            if (line != null){
                jedis.zadd(NAMES_KEY, 0, line);
            }
            else{
                break;
            }
            line = br.readLine();
        }
        br.close();


        while(true){
            System.out.print("Search for ('Enter' for quit): ");
            String prefix = sc.nextLine();
            System.out.println("--------------------");
            if (prefix.equals("")){
                break;
            }
            jedis.zrangeByLex(NAMES_KEY, "[" + prefix, "[" + prefix + "\uFFFF").forEach(System.out::println);
            System.out.println("--------------------");
        }

        jedis.close();
        sc.close();

    }
}

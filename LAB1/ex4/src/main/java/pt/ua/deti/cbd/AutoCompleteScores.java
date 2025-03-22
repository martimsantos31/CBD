package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;
import java.io.*;
import java.util.*;

public class AutoCompleteScores {

    public static String path = "nomes-pt-2021.csv";
    public static final String NAMES_KEY_LEX = "names:2";
    public static final String NAMES_KEY_POPULARITY = "names:3";
    public static final String NAMES_KEY_INTERSECT= "names:4";

    public static void main(String[] args) throws IOException {
        Jedis jedis = new Jedis();
        Scanner sc = new Scanner(System.in);

        jedis.del("names:*");

        BufferedReader br = new BufferedReader(new FileReader(path));
        String line;

        while ((line = br.readLine()) != null) {
            String[] valuesToStore = line.split(";");
            if (valuesToStore.length < 2) {
                System.err.println("Invalid line: " + line);
                continue;
            }

            String name = valuesToStore[0];
            double popularity = Double.parseDouble(valuesToStore[1]);

            jedis.zadd(NAMES_KEY_LEX, 0, name);
            jedis.zadd(NAMES_KEY_POPULARITY, popularity, name);
        }
        br.close();

        while (true) {
            System.out.print("Search for ('Enter' for quit): ");
            String prefix = sc.nextLine();

            if (prefix.isEmpty()) {
                break;
            }

            List<String> filteredNames = jedis.zrangeByLex(NAMES_KEY_LEX, "[" + prefix, "[" + prefix + "\uFFFF");

            jedis.del(NAMES_KEY_INTERSECT);

            for (String name : filteredNames) {
                jedis.zadd(NAMES_KEY_INTERSECT,jedis.zscore(NAMES_KEY_POPULARITY, name) , name);
            }

            jedis.zrevrangeWithScores(NAMES_KEY_INTERSECT, 0, -1).forEach(entry ->
                    System.out.println(entry.getElement() + "-" + entry.getScore())
            );


            System.out.println("--------------------");
        }

        sc.close();
        jedis.close();
    }
}

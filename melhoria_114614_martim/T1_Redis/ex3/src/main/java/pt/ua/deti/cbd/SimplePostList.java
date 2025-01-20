package pt.ua.deti.cbd;

import java.util.List;
import java.util.ArrayList;
import redis.clients.jedis.Jedis;

public class SimplePostList {

    public static String OBJECTS_KEY = "objects";

    public static void main(String[] args) {
        Jedis jedis = new Jedis();
        List<String> objects = new ArrayList<>();

        objects.add("Lápis");
        objects.add("Caneta");
        objects.add("Borracha");
        objects.add("Lapiseira");

        for(String object : objects){
            jedis.lpush(OBJECTS_KEY, object);
        }

        jedis.lrange(OBJECTS_KEY, 0, -1).forEach(System.out::println);
        jedis.close();
    }
}

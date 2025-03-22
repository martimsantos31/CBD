package pt.ua.deti.cbd;

import java.util.HashMap;
import java.util.Map;
import java.util.List;
import java.util.ArrayList;
import redis.clients.jedis.Jedis;

public class SimplePostHashMap {

    public static String CARS_KEY = "cars";

    public static void main(String[] args) {
        Jedis jedis = new Jedis();

        Map<String, String> cars = new HashMap<>();

        cars.put("Carro1","Bugatti");
        cars.put("Carro2","Lamborghini");
        cars.put("Carro3","Ferrari");
        cars.put("Carro4","Porsche");

        for(String key : cars.keySet()){
            jedis.hset(CARS_KEY, key, cars.get(key));
        }

        jedis.hgetAll(CARS_KEY).forEach((k,v) -> System.out.println(k + " -> " + v));

        jedis.close();
    }
}

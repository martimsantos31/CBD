package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;
import java.util.HashMap;
import java.util.Map;

public class SimplePostHash {
    public static String USERS_KEY = "users";

    public static void main(String[] args) {
        Jedis jedis = new Jedis();

        Map<String, String> users = new HashMap<>();
        users.put("Ana", "admin");
        users.put("Pedro", "user");
        users.put("Maria", "moderator");
        users.put("Luis", "user");

        jedis.del(USERS_KEY);

        for (Map.Entry<String, String> entry : users.entrySet()) {
            jedis.hset(USERS_KEY, entry.getKey(), entry.getValue());
        }

        Map<String, String> redisUsers = jedis.hgetAll(USERS_KEY);
        redisUsers.forEach((user, role) -> System.out.println(user + ": " + role));

        jedis.close();
    }
}


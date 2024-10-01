package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;

public class SimplePostList {
    public static String USERS_KEY = "users";

    public static void main(String[] args) {
        Jedis jedis = new Jedis();

        String[] users = {"Ana", "Pedro", "Maria", "Luis"};

        jedis.del(USERS_KEY);

        for (String user : users) {
            jedis.rpush(USERS_KEY, user);
        }

        jedis.lrange(USERS_KEY, 0, -1).forEach(System.out::println);

        jedis.close();
    }
}

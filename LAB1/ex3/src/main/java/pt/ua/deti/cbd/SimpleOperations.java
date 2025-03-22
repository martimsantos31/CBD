package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;
import java.util.Scanner;

public class SimpleOperations {

    public static String PLAYERS_KEY = "players";

    public static void main(String[] args) {
        Jedis jedis = new Jedis();
        Scanner sc = new Scanner(System.in);
        System.out.println(jedis.ping());
        String input = "";

        while (!input.equals("exit")) {

            System.out.println("1 - Add player");
            System.out.println("2 - Update player score");
            System.out.println("3 - Remove player");
            System.out.println("4 - Get player score");
            System.out.println("5 - Get all players");
            System.out.println("exit - Exit");
            System.out.print("Choose an option: ");

            input = sc.nextLine();

            switch (input) {
                case "1":
                    System.out.print("Enter the player name: ");
                    String name = sc.nextLine();
                    System.out.print("Enter the player score: ");
                    double score = sc.nextDouble();
                    sc.nextLine();
                    addPlayer(jedis,name, score);
                    break;

                case "2":
                    System.out.print("Enter the player name: ");
                    String name2 = sc.nextLine();
                    System.out.print("Enter the player score: ");
                    double score2 = sc.nextDouble();
                    sc.nextLine();
                    updateScore(jedis,name2, score2);
                    break;

                case "3":
                    System.out.print("Enter the player name: ");
                    String name3 = sc.nextLine();
                    removePlayer(jedis,name3);
                    break;

                case "4":
                    System.out.print("Enter the player name: ");
                    String name4 = sc.nextLine();
                    getScore(jedis,name4);
                    break;

                case "5":
                    System.out.println("Players: ");
                    getPlayers(jedis);
                    break;

                case "exit":
                    break;

                default:
                    System.out.println("Invalid option. Try again.");
            }
        }



        jedis.close();
    }

    public static void addPlayer(Jedis jedis,String name, double score) {
        jedis.zadd(PLAYERS_KEY, score, name);
    }

    public static void getPlayers(Jedis jedis) {
        jedis.zrange(PLAYERS_KEY, 0, -1).forEach(System.out::println);
    }

    public static void updateScore(Jedis jedis,String playerName, double score){
        jedis.zincrby(PLAYERS_KEY, score, playerName);
    }

    public static void removePlayer(Jedis jedis,String playerName){
        jedis.zrem(PLAYERS_KEY, playerName);
    }

    public static void getScore(Jedis jedis,String playerName){
        System.out.println(jedis.zscore(PLAYERS_KEY, playerName));
    }

}
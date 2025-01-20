package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;

import java.util.Scanner;

public class AttendanceSystemQuantity {
    public static final String ATTENDANCE_QTY_KEY = "attendance:qty:";
    public static final int LIMIT = 30;
    public static final int TIMESLOT = 60*60;

    public static void main(String[] args) {
        Jedis jedis = new Jedis();
        Scanner sc = new Scanner(System.in);

        //para garantir que não existem conflitos
        jedis.flushAll();

        System.out.println("You can request up to " + LIMIT + " products every " + (TIMESLOT / 60) + " minutes.");

        while (true) {
            System.out.println("Press 'Enter' without typing to exit.");
            System.out.print("Who are you (username): ");
            String username = sc.nextLine().trim();

            if (username.isEmpty()) {
                break;
            }

            String USER_KEY = ATTENDANCE_QTY_KEY + username;

            long currentTime = System.currentTimeMillis() / 1000L;
            long startTime = currentTime - TIMESLOT;

            long productCount = jedis.zcount(USER_KEY, startTime, currentTime);

            if (productCount >= LIMIT) {
                System.out.println("You have reached the limit of " + LIMIT + " products in the current timeslot.");
                continue;
            }

            System.out.print("I wanna buy (product): ");
            String product = sc.nextLine().trim();

            System.out.print("How many \"" + product + "\" do you want to buy: ");
            int quantity = sc.nextInt();
            sc.nextLine();

            if (quantity <= 0 || quantity > LIMIT) {
                System.out.println("Quantity must be greater than 0 and lower or equal than Limit. Please try again.");
                continue;
            }

            if (product.isEmpty()) {
                System.out.println("Product name cannot be empty. Please try again.");
                continue;
            }

            if (productCount + quantity > LIMIT) {
                System.out.println("Error: You can only request up to " + LIMIT
                        + " products in the current timeslot.");
                continue;
            }

            for (int i = 1; i <= quantity; i++) {
                String uniqueProduct = product + "#" + System.nanoTime();
                jedis.zadd(USER_KEY, currentTime, uniqueProduct);
            }


        }

        sc.close();
        jedis.close();
    }
}



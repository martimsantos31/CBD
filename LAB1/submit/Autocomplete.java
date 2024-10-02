package pt.ua.deti.cbd;


import redis.clients.jedis.Jedis;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.Scanner;


public class Autocomplete {
    private static final String REDIS_KEY = "names";
    private Jedis jedis;

    public Autocomplete() {
        jedis = new Jedis("localhost", 6379);
    }

    public void loadNamesIntoDB(String filePath) {
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                jedis.zadd(REDIS_KEY, 0, line.toLowerCase());
            }
            System.out.println("Nomes carregados no Redis");
        } catch (IOException e) {
            System.out.println("Erro ao carregar nomes: " + e.getMessage());
        }
    }


    public List<String> autocomplete(String prefix) {
        String min = prefix.toLowerCase();
        String max = prefix.toLowerCase() + "\uFFFF";


        List<String> results = new ArrayList<>(jedis.zrangeByLex(REDIS_KEY, "[" + min, "[" + max));

        return results;
    }

    public static void main(String[] args) {

        Autocomplete autocomplete = new Autocomplete();

        autocomplete.loadNamesIntoDB("names.txt");

        Scanner scanner = new Scanner(System.in);
        while (true) {
            System.out.print("Search for ('Enter' for quit): ");
            String input = scanner.nextLine();
            if (input.isEmpty()) {
                break;
            }

            List<String> suggestions = autocomplete.autocomplete(input);
            if (suggestions.isEmpty()) {
                System.out.println("No suggestions found.");
            } else {
                suggestions.forEach(System.out::println);
            }
        }

        autocomplete.jedis.close();
        scanner.close();
    }
}



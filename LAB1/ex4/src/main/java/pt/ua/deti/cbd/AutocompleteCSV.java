package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;
import java.util.Set;
import java.util.stream.Collectors;

public class AutocompleteCSV {
    private static final String REDIS_KEY = "names1";
    private Jedis jedis;

    public AutocompleteCSV() {
        jedis = new Jedis("localhost", 6379);
    }

    public void loadNamesIntoDB(String filePath) throws FileNotFoundException {

        jedis.flushDB();

        File file = new File(filePath);
        Scanner scanner = new Scanner(file);
        HashMap<String, String> map = new HashMap<>();

        while (scanner.hasNextLine()) {
            String line = scanner.nextLine();
            String[] parts = line.split(";");

            if (parts.length == 2) {
                String name = parts[0].toLowerCase();
                String registos = parts[1];
                map.put(name, registos);
            } else {
                System.out.println("Linha inválida: " + line);
            }
        }

        jedis.hmset(REDIS_KEY, map);
        System.out.println("Nomes e registros carregados no Redis");

        scanner.close();
    }

    public List<String> autocomplete(String prefix) {

        Set<String> allNames = jedis.hkeys(REDIS_KEY);
        List<String> matchingNames = allNames.stream()
                .filter(name -> name.startsWith(prefix.toLowerCase()))
                .collect(Collectors.toList());

        List<String> suggestions = matchingNames.stream()
                .sorted((a, b) -> {
                    int regA = Integer.parseInt(jedis.hget(REDIS_KEY, a));
                    int regB = Integer.parseInt(jedis.hget(REDIS_KEY, b));
                    return Integer.compare(regB, regA);
                })
                .collect(Collectors.toList());

        List<String> resultsWithPopularity = suggestions.stream()
                .map(name -> name + " (" + jedis.hget(REDIS_KEY, name) + " registos)")
                .collect(Collectors.toList());

        return resultsWithPopularity;
    }

    public static void main(String[] args) throws FileNotFoundException {
        AutocompleteCSV autocomplete = new AutocompleteCSV();

        autocomplete.loadNamesIntoDB("nomes-pt-2021.csv");

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


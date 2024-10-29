package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;
import java.util.List;
import java.util.Scanner;

public class AtendimentoB{

    private static final int LIMIT = 30;
    private static final int TIMESLOT = 3600000;

    private Jedis jedis;

    public AtendimentoB() {
        this.jedis = new Jedis();
    }


    public void registerRequest(String username, String product, int quantity) {
        long currentTimeMillis = System.currentTimeMillis();


        List<String> recentRequests = jedis.zrangeByScore(username, currentTimeMillis - TIMESLOT, currentTimeMillis);

        int totalQuantity = 0;


        for (String request : recentRequests) {
            String[] parts = request.split(":");
            int pastQuantity = Integer.parseInt(parts[1]);
            totalQuantity += pastQuantity;
        }


        if (totalQuantity + quantity > LIMIT) {
            System.err.println("ERRO: O limite de " + LIMIT + " unidades por usuário foi atingido nesta janela de tempo.");
        } else {

            jedis.zadd(username, currentTimeMillis, product + ":" + quantity);
            System.out.println("Pedido aceito: [" + product + "] com quantidade [" + quantity + "] para o usuário [" + username + "]");
        }
    }

    public static void main(String[] args) {
        AtendimentoB system = new AtendimentoB();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("Insira o nome do utilizador, produto e quantidade separados por ponto e vírgula (ou 'q' para sair):");
            String input = scanner.nextLine().trim();

            if (input.equalsIgnoreCase("q")) {
                System.out.println("Saindo...");
                break;
            }


            if (input.chars().filter(ch -> ch == ';').count() != 2) {
                System.err.println("Entrada inválida. Utilize o formato 'utilizador;produto;quantidade'.");
                continue;
            }


            String[] parts = input.split(";");
            if (parts.length != 3) {
                System.err.println("Formato de entrada inválido. Certifique-se de que está no formato 'utilizador;produto;quantidade'.");
                continue;
            }

            String username = parts[0].trim();
            String product = parts[1].trim();
            int quantity;

            try {
                quantity = Integer.parseInt(parts[2].trim());
            } catch (NumberFormatException e) {
                System.err.println("A quantidade deve ser um número inteiro.");
                continue;
            }

            if (username.isEmpty() || product.isEmpty() || quantity <= 0) {
                System.err.println("Utilizador, produto ou quantidade inválidos. Por favor, tente novamente.");
                continue;
            }

            system.registerRequest(username, product, quantity);
        }

        scanner.close();
    }
}


package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;
import java.util.List;
import java.util.Scanner;

public class AtendimentoA {

    private static final int LIMIT = 2;
    private static final int TIMESLOT = 30000;

    private Jedis jedis;

    public AtendimentoA() {
        this.jedis = new Jedis();
    }

    public void registerRequest(String username, String product) {
        long currentTimeMillis = System.currentTimeMillis();

        List<String> recentRequests = jedis.zrangeByScore(username, currentTimeMillis - TIMESLOT, currentTimeMillis);

        if (recentRequests.size() < LIMIT) {
            jedis.zadd(username, currentTimeMillis, product);
            System.out.println("Pedido aceito: [" + product + "] para o usuário [" + username + "]");
        } else {
            System.err.println("ERRO: O limite de " + LIMIT + " pedidos por usuário foi atingido nesta janela de tempo.");
        }
    }

    public static void main(String[] args) {
        AtendimentoA system = new AtendimentoA();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("Insira o nome do utilizador e o produto separados por ponto e vírgula (ou 'q' para sair):");
            String input = scanner.nextLine().trim();

            if (input.equalsIgnoreCase("q")) {
                System.out.println("Saindo...");
                break;
            }

            if (!input.contains(";")) {
                System.err.println("Entrada inválida. Utilize o formato 'utilizador;produto'.");
                continue;
            }

            String[] parts = input.split(";");
            if (parts.length != 2) {
                System.err.println("Formato de entrada inválido. Certifique-se de que está no formato 'utilizador;produto'.");
                continue;
            }

            String username = parts[0].trim();
            String product = parts[1].trim();

            if (username.isEmpty() || product.isEmpty()) {
                System.err.println("Utilizador ou produto inválido. Por favor, tente novamente.");
                continue;
            }

            system.registerRequest(username, product);
        }

        scanner.close();
    }
}

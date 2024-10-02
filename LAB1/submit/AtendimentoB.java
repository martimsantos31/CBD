package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;
import java.util.List;
import java.util.Scanner;

public class AtendimentoB{

    private static final int LIMIT = 30; // Limite de unidades por usuário
    private static final int TIMESLOT = 3600000; // Timeslot em milissegundos (60 minutos)

    private Jedis jedis;

    public AtendimentoB() {
        this.jedis = new Jedis(); // Conectar ao Redis local
    }

    /**
     * Registra um pedido de produto com quantidade para um usuário.
     *
     * @param username Nome do usuário.
     * @param product Nome do produto.
     * @param quantity Quantidade de unidades do produto solicitado.
     */
    public void registerRequest(String username, String product, int quantity) {
        long currentTimeMillis = System.currentTimeMillis();

        // Verificar pedidos recentes dentro da janela de tempo (timeslot)
        List<String> recentRequests = jedis.zrangeByScore(username, currentTimeMillis - TIMESLOT, currentTimeMillis);

        int totalQuantity = 0;

        // Somar a quantidade de todos os pedidos recentes
        for (String request : recentRequests) {
            String[] parts = request.split(":");
            int pastQuantity = Integer.parseInt(parts[1]);
            totalQuantity += pastQuantity;
        }

        // Verificar se a soma das quantidades já excede o limite
        if (totalQuantity + quantity > LIMIT) {
            System.err.println("ERRO: O limite de " + LIMIT + " unidades por usuário foi atingido nesta janela de tempo.");
        } else {
            // Adicionar o novo pedido com o timestamp atual e a quantidade
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

            // Verificar se a entrada contém pelo menos dois ";"
            if (input.chars().filter(ch -> ch == ';').count() != 2) {
                System.err.println("Entrada inválida. Utilize o formato 'utilizador;produto;quantidade'.");
                continue;
            }

            // Separar username, product e quantity pelo delimitador ";"
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

            // Registrar o pedido
            system.registerRequest(username, product, quantity);
        }

        scanner.close();
    }
}


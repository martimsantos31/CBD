package pt.ua.deti.ies.b;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Accumulators;
import com.mongodb.client.model.Aggregates;
import com.mongodb.client.model.Filters;
import org.bson.Document;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class RequestSystem {
    private final MongoCollection<Document> collection;
    private final int limit;       // Número máximo de unidades por timeslot
    private final int timeslot;    // Timeslot em minutos

    public RequestSystem(MongoDatabase db, int limit, int timeslot) {
        this.collection = db.getCollection("requests");
        this.limit = limit;
        this.timeslot = timeslot;
    }

    // Processa o pedido do usuário com uma quantidade
    public void processRequest(String username, String product, int quantity) {
        // Calcula o início do timeslot atual
        Date timeslotStart = Date.from(Instant.now().minus(timeslot, ChronoUnit.MINUTES));

        // Calcula o total de quantidade de produtos solicitada pelo usuário no timeslot atual
        List<Document> results = collection.aggregate(Arrays.asList(
                Aggregates.match(Filters.and(
                        Filters.eq("username", username),
                        Filters.gte("timestamp", timeslotStart)
                )),
                Aggregates.group(null, Accumulators.sum("totalQuantity", "$quantity"))
        )).into(new java.util.ArrayList<>());

        int totalQuantity = results.isEmpty() ? 0 : results.get(0).getInteger("totalQuantity");

        // Verifica se adicionar o novo pedido excede o limite
        if (totalQuantity + quantity > limit) {
            System.out.println("Erro: Limite de unidades de produto atingido para o usuário " + username);
        } else {
            // Registra o novo pedido no MongoDB
            Document request = new Document("username", username)
                    .append("product", product)
                    .append("quantity", quantity)
                    .append("timestamp", new Date());  // timestamp atual

            collection.insertOne(request);
            System.out.println("Pedido registrado com sucesso para o usuário " + username + " para o produto " + product + " com quantidade " + quantity);
        }
    }
}



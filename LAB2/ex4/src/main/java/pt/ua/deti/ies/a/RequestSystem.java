package pt.ua.deti.ies.a;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import org.bson.Document;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class RequestSystem {
    private final MongoCollection<Document> collection;
    private final int limit;
    private final int timeslot;

    public RequestSystem(MongoDatabase db, int limit, int timeslot) {
        this.collection = db.getCollection("requests");
        this.limit = limit;
        this.timeslot = timeslot;
    }

    public void processRequest(String username, String product) {
        Date timeslotStart = Date.from(Instant.now().minus(timeslot, ChronoUnit.MINUTES));

        Set<String> products = new HashSet<>();
        for (Document doc : collection.find(Filters.and(
                Filters.eq("username", username),
                Filters.gte("timestamp", timeslotStart)
        ))) {
            products.add(doc.getString("product"));
        }

        if (products.size() >= limit) {
            System.out.println("Erro: Limite de produtos diferentes atingido para o usuário " + username);
        } else {
            Document request = new Document("username", username)
                    .append("product", product)
                    .append("timestamp", new Date());
            collection.insertOne(request);
            System.out.println("Pedido registrado com sucesso para o usuário " + username + " para o produto " + product);
        }
    }
}




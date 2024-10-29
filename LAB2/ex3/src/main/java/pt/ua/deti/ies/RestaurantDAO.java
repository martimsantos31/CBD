package pt.ua.deti.ies;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import org.bson.Document;

import java.util.*;

public class RestaurantDAO {
    private MongoCollection<Document> collection;

    public RestaurantDAO(MongoDatabase db) {
        this.collection = db.getCollection("restaurants");  // Nome da coleção
    }

    public void listAllDocuments() {
        for (Document doc : collection.find()) {
            System.out.println(doc.toJson());
        }
    }

    public void listSelectedFields() {
        for (Document doc : collection.find().projection(
                new Document("nome", 1)
                        .append("restaurant_id", 1)
                        .append("localidade", 1)
                        .append("gastronomia", 1)
                        .append("_id", 0)  // Excluir o campo _id
        )) {
            System.out.println(doc.toJson());
        }
    }


    public void countRestaurantsInBronx() {
        long count = collection.countDocuments(Filters.eq("localidade", "Bronx"));
        System.out.println("Total de restaurantes no Bronx: " + count);
    }

    public void listFirst15RestaurantsInBronx() {
        for (Document doc : collection.find(Filters.eq("localidade", "Bronx"))
                .sort(new Document("nome", 1))
                .limit(15)) {
            System.out.println(doc.toJson());
        }
    }

    public void listRestaurantsWithHighScore() {
        for (Document doc : collection.find(Filters.gt("grades.score", 85))) {
            System.out.println(doc.toJson());
        }
    }

    public int countLocalities() {
        long count = collection.distinct("localidade", String.class).into(new ArrayList<>()).size();
        return (int) count;
    }


    public Map<String, Integer> countRestByLocality() {
        Map<String, Integer> countByLocality = new HashMap<>();

        for (Document doc : collection.aggregate(Arrays.asList(
                new Document("$group", new Document("_id", "$localidade")
                        .append("count", new Document("$sum", 1)))
        ))) {
            String locality = doc.getString("_id");
            Integer count = doc.getInteger("count", 0);
            countByLocality.put(locality, count);
        }

        return countByLocality;
    }


    public List<String> getRestWithNameCloserTo(String name) {
        List<String> names = new ArrayList<>();
        for (Document doc : collection.find(Filters.text(name))) {
            names.add(doc.getString("nome"));
        }
        return names;
    }

    public void createIndexes() {
        collection.createIndex(new Document("nome", "text"));
        collection.createIndex(new Document("localidade", 1));
        collection.createIndex(new Document("gastronomia", 1));
    }



}

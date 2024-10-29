package pt.ua.deti.ies;

import com.mongodb.client.MongoDatabase;
import org.bson.Document;

import java.util.Map;

public class Main {
    public static void main(String[] args) {
        try {
            MongoDatabase db = MongoConnection.getDB();
            RestaurantDAO dao = new RestaurantDAO(db);


            // dao.createIndexes();


            // dao.listAllDocuments();
            // dao.listSelectedFields();
            // dao.countRestaurantsInBronx();
            // dao.listFirst15RestaurantsInBronx();
            // dao.listRestaurantsWithHighScore();

            System.out.println("Numero de localidades distintas: " + dao.countLocalities());

            System.out.println("Numero de restaurantes por localidade:");
            Map<String, Integer> countByLocality = dao.countRestByLocality();
            countByLocality.forEach((locality, count) ->
                    System.out.println("-> " + locality + "-" + count)
            );

            System.out.println("Restaurantes com nome próximo a 'Park':");
            for (String s : dao.getRestWithNameCloserTo("Park")) {
                System.out.println("-> " + s);
            }


        } catch (Exception e) {
            System.err.println("An error occurred: " + e.getMessage());
            e.printStackTrace();
        }
    }
}


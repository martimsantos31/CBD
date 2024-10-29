package pt.ua.deti.ies.a;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;

public class MongoConnection {
    private static final String DATABASE_NAME = "cbd";

    public static MongoDatabase getDB() {
        MongoClient client = MongoClients.create("mongodb://localhost:27017");
        return client.getDatabase(DATABASE_NAME);
    }
}

package pt.ua.deti.ies.b;

import com.mongodb.client.MongoDatabase;

public class Main {
    public static void main(String[] args) {
        try {
            MongoDatabase db = MongoConnection.getDB();

            int limit = 30;
            int timeslot = 60;

            RequestSystem system = new RequestSystem(db, limit, timeslot);

            system.processRequest("user3", "productA", 10);
            system.processRequest("user3", "productB", 15);

            system.processRequest("user3", "productC", 10);

        } catch (Exception e) {
            System.err.println("An error occurred: " + e.getMessage());
            e.printStackTrace();
        }
    }
}


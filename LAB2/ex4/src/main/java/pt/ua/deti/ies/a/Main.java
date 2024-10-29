package pt.ua.deti.ies.a;

import com.mongodb.client.MongoDatabase;

public class Main {
    public static void main(String[] args) {
        try {
            MongoDatabase db = MongoConnection.getDB();

            int limit = 30;
            int timeslot = 60;

            RequestSystem system = new RequestSystem(db, limit, timeslot);

            system.processRequest("user2", "productA");
            system.processRequest("user2", "productB");

            for (int i = 0; i < 31; i++) {
                system.processRequest("user2", "product" + i);
            }

        } catch (Exception e) {
            System.err.println("An error occurred: " + e.getMessage());
            e.printStackTrace();
        }
    }
}


package pt.ua.deti.cbd;

import com.datastax.oss.driver.api.core.CqlSession;

public class DriverTutorial {
    public static void main(String[] args) {
        CqlSession session = CqlSession.builder().withKeyspace("cbd_videos").build();

        String query = "INSERT INTO users (username, name, email, signup_date) VALUES ('martim_souto', 'Martim Souto', 'martimsouto@ua.pt' ,'2023-01-01 10:00:00');";
        session.execute(query);

        String query2 = "SELECT * FROM users;";
        session.execute(query2).forEach(row -> {
            System.out.println(row.getString("username"));
        });

        String query3 = "DELETE FROM users WHERE username = 'martim_souto';";
        session.execute(query3);

        System.out.println("-------------------");

        String query4 = "SELECT * FROM users;";
        session.execute(query4).forEach(row -> {
            System.out.println(row.getString("username"));
        });
        session.close();
    }
}
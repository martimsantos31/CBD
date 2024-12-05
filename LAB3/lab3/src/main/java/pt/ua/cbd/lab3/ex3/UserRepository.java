package pt.ua.cbd.lab3.ex3;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.PreparedStatement;

import java.time.Instant;
import java.util.UUID;

public class UserRepository {
    private CqlSession session;
    private final PreparedStatement insertUserStmt;

    public UserRepository(CqlSession session) {
        this.session = session;
        this.insertUserStmt = session.prepare(
                "INSERT INTO users (user_id, username, name, email, registration_timestamp) VALUES (?, ?, ?, ?, ?)");
    }

    public void insertUser(UUID userId, String username, String name, String email, String registrationTimestamp) {
        Instant timestamp = Instant.parse(registrationTimestamp);
        session.execute(insertUserStmt.bind(userId, username, name, email, timestamp));
    }
}






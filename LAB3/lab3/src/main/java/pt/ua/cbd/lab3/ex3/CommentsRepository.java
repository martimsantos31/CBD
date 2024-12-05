package pt.ua.cbd.lab3.ex3;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.PreparedStatement;
import com.datastax.oss.driver.api.core.cql.ResultSet;
import java.time.Instant;
import java.util.UUID;

public class CommentsRepository {
    private CqlSession session;
    private final PreparedStatement insertCommentStmt;

    public CommentsRepository(CqlSession session) {
        this.session = session;
        this.insertCommentStmt = session.prepare(
                "INSERT INTO comments (video_id, author_id, comment_timestamp, comment) VALUES (?, ?, ?, ?)");
    }

    public void addComment(UUID videoId, UUID authorId, String commentTimestamp, String comment) {
        try {
            Instant timestamp = Instant.parse(commentTimestamp);
            session.execute(insertCommentStmt.bind(videoId, authorId, timestamp, comment));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void queryCommentsByUser(String authorUsername) {
        String query = "SELECT * FROM comments_by_user WHERE author_username = ?";
        ResultSet rs = session.execute(query, authorUsername);
        rs.forEach(row -> System.out.println("Comment: " + row.getString("comment") + ", Timestamp: " + row.getInstant("comment_timestamp")));
    }
}



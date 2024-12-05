package pt.ua.cbd.lab3.ex3;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.PreparedStatement;
import com.datastax.oss.driver.api.core.cql.ResultSet;

import java.time.Instant;
import java.util.Set;
import java.util.UUID;

public class VideoRepository {
    private CqlSession session;
    private final PreparedStatement insertVideoStmt;

    public VideoRepository(CqlSession session) {
        this.session = session;
        this.insertVideoStmt = session.prepare(
                "INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp) VALUES (?, ?, ?, ?, ?, ?)");
    }

    public void insertVideo(UUID videoId, UUID authorId, String name, String description, Set<String> tags, String uploadTimestamp) {
        Instant timestamp = Instant.parse(uploadTimestamp);
        session.execute(insertVideoStmt.bind(videoId, authorId, name, description, tags, timestamp));
    }

    public void updateVideoDescription(UUID videoId, String newDescription) {
        String query = "UPDATE videos SET description = ? WHERE video_id = ?";
        session.execute(query, newDescription, videoId);
    }

    public void queryVideosByAuthor(String authorUsername) {
        String query = "SELECT * FROM videos_by_author WHERE author_username = ?";
        ResultSet rs = session.execute(query, authorUsername);
        rs.forEach(row -> System.out.println("Video Name: " + row.getString("video_name") + ", Description: " + row.getString("description")));
    }

}


package pt.ua.cbd.lab3.ex3;

import com.datastax.oss.driver.api.core.CqlSession;
import java.util.UUID;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class Main {
    public static void main(String[] args) {
        try (CqlSession session = CassandraConfig.getSession()) {
            VideoRepository videoRepo = new VideoRepository(session);
            UserRepository userRepo = new UserRepository(session);
            CommentsRepository commentsRepo = new CommentsRepository(session);

            UUID newUserId = UUID.randomUUID();
            userRepo.insertUser(newUserId, "john_doe", "John Doe", "john.doe@email.com", "2020-01-01T12:00:00Z");

            UUID newVideoId = UUID.randomUUID();
            Set<String> tags = new HashSet<>(Arrays.asList("tag1", "tag2"));
            videoRepo.insertVideo(newVideoId, newUserId, "My First Video", "Description of my first video", tags, "2020-01-02T12:00:00Z");

            videoRepo.updateVideoDescription(newVideoId, "Updated description of my first video");
            videoRepo.queryVideosByAuthor("john_doe");

            commentsRepo.addComment(newVideoId, newUserId, "2020-01-03T12:00:00Z", "Great video!");
            commentsRepo.queryCommentsByUser("john_doe");
        } finally {
            CassandraConfig.closeSession();
        }
    }
}





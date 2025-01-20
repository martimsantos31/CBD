package pt.ua.deti.cbd;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.Row;

public class FourQueries {
    public static void main(String[] args) {
        CqlSession session = CqlSession.builder().withKeyspace("cbd_videos").build();

        System.out.println("------Pesquisa de todos os videos do autor john_doe------");
        searchVideosByAuthor(session, "john_doe");
        System.out.println();

        System.out.println("------Os comentarios (dos videos) que a utilizadora jane_smith esta a seguir (following)------");
        searchCommentsByFollowedVideos(session, "jane_smith");
        System.out.println();

        System.out.println("------Os videos com a tag Funny------");
        searchVideosByTag(session, "funny");
        System.out.println();

        System.out.println("------Lista com todos os vídeos marcados como favoritos pelo utilizador john_doe------");
        searchFavoritesByUser(session, "john_doe");
        System.out.println("-------------------");

        session.close();
    }

    public static void searchVideosByAuthor(CqlSession session, String author) {
        String query = "SELECT * FROM videos_by_author WHERE owner_username = '" + author + "';";

        System.out.println("+--------------------------------+");
        System.out.println("| name                           |");
        System.out.println("+--------------------------------+");

        for (Row row : session.execute(query)) {
            String name = row.getString("name");
            System.out.printf("| %-30s |\n", name);
        }

        System.out.println("+--------------------------------+");
    }


    public static void searchCommentsByFollowedVideos(CqlSession session, String follower){
        String query = "SELECT * FROM comments_by_followed_videos WHERE follower_username = '" + follower + "';";

        System.out.println("+--------------------------------+");
        System.out.println("| description                    |");
        System.out.println("+--------------------------------+");

        for (Row row : session.execute(query)) {
            String description = row.getString("description");
            System.out.printf("| %-30s |\n", description);
        }

        System.out.println("+--------------------------------+");
    }


    public static void searchVideosByTag(CqlSession session, String tag){
        String query = "SELECT * FROM videos_by_tag WHERE tag = '" + tag + "';";

        System.out.println("+--------------------------------+");
        System.out.println("| name                           |");
        System.out.println("+--------------------------------+");

        for (Row row : session.execute(query)) {
            String name = row.getString("name");
            System.out.printf("| %-30s |\n", name);
        }

        System.out.println("+--------------------------------+");
    }

    public static void searchFavoritesByUser(CqlSession session, String user){
        String query = "SELECT * FROM favorites_by_user WHERE user_username = '" + user + "';";

        System.out.println("+-----------+");
        System.out.println("| video_id  |");
        System.out.println("+-----------+");

        for (Row row : session.execute(query)) {
            int videoId = row.getInt("video_id");
            System.out.printf("| %-9d |\n", videoId);
        }

        System.out.println("+-----------+");
    }
}


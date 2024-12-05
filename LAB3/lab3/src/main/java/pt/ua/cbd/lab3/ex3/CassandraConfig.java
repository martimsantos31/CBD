package pt.ua.cbd.lab3.ex3;

import com.datastax.oss.driver.api.core.CqlSession;
import java.net.InetSocketAddress;

public class CassandraConfig {
    private static CqlSession session;

    public static CqlSession getSession() {
        if (session == null) {
            session = CqlSession.builder()
                    .addContactPoint(new InetSocketAddress("localhost", 9042))
                    .withLocalDatacenter("datacenter1")
                    .withKeyspace("videos")
                    .build();
        }
        return session;
    }

    public static void closeSession() {
        if (session != null) {
            session.close();
        }
    }
}


package pt.ua.cbd.lab4.ex4;

import org.neo4j.driver.*;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        String uri = "bolt://localhost:7687";
        String user = "neo4j";
        String password = "neo4j";

        String csvFilePath = "resources/spotify_tracks.csv";
        String outputFilePath = "CBD_L44c_output.txt";

        try (Driver driver = GraphDatabase.driver(uri, AuthTokens.basic(user, password));
             Session session = driver.session();
             BufferedWriter writer = new BufferedWriter(new FileWriter(outputFilePath))) {

            System.out.println("A conectar ao Neo4j...");
            writer.write("Resultados das Queries:\n\n");

            List<String> lines = Files.readAllLines(Paths.get(csvFilePath));
            System.out.println("A carregar os dados do CSV para o Neo4j...");

            for (int i = 1; i < lines.size(); i++) {
                String[] data = lines.get(i).split(",(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)", -1);

                String trackId = data[0].trim();
                String trackName = data[1].trim();
                String genre = data[2].trim();
                String artists = data[3].trim();
                String albumName = data[4].trim();
                Integer popularity = parseInteger(data[5]);
                Integer durationMs = parseInteger(data[6]);
                boolean explicit = Boolean.parseBoolean(data[7].trim());

                session.run("MERGE (t:Track {id: $id}) " +
                                "SET t.name = $name, t.genre = $genre, t.popularity = $popularity, " +
                                "t.duration_ms = $duration_ms, t.explicit = $explicit",
                        Values.parameters(
                                "id", trackId,
                                "name", trackName,
                                "genre", genre,
                                "popularity", popularity,
                                "duration_ms", durationMs,
                                "explicit", explicit
                        ));

                if (!albumName.isEmpty()) {
                    session.run("MERGE (a:Album {name: $albumName}) " +
                                    "MERGE (t)-[:INCLUDED_IN]->(a)",
                            Values.parameters(
                                    "albumName", albumName,
                                    "id", trackId
                            ));
                }

                if (!artists.isEmpty()) {
                    String[] artistList = artists.split(",");
                    for (String artist : artistList) {
                        artist = artist.trim();
                        if (!artist.isEmpty()) {
                            session.run("MERGE (ar:Artist {name: $artistName}) " +
                                            "MERGE (t)-[:PERFORMED_BY]->(ar)",
                                    Values.parameters(
                                            "artistName", artist,
                                            "id", trackId
                                    ));

                            if (!albumName.isEmpty()) {
                                session.run("MERGE (a:Album {name: $albumName}) " +
                                                "MERGE (ar)-[:CREATED]->(a)",
                                        Values.parameters(
                                                "albumName", albumName,
                                                "artistName", artist
                                        ));
                            }
                        }
                    }
                }
            }

            System.out.println("Dados carregados com sucesso!");

            System.out.println("A executar as queries...");
            String[] queries = {
                    "MATCH (t:Track) RETURN COUNT(t) AS TotalFaixas",
                    "MATCH (ar:Artist) RETURN COUNT(ar) AS TotalArtistas",
                    "MATCH (a:Album) RETURN COUNT(a) AS TotalAlbuns",
                    "MATCH (t:Track) RETURN t.name AS Nome, t.genre AS Genero LIMIT 10",
                    "MATCH (t:Track)-[:PERFORMED_BY]->(ar:Artist) RETURN t.name AS Faixa, ar.name AS Artista LIMIT 10",
                    "MATCH (t:Track)-[:INCLUDED_IN]->(a:Album) RETURN t.name AS Faixa, a.name AS Album LIMIT 10",
                    "MATCH (ar:Artist)-[:CREATED]->(a:Album) RETURN ar.name AS Artista, a.name AS Album LIMIT 10",
                    "MATCH (t:Track) WHERE t.explicit = true RETURN t.name AS Faixa, t.explicit AS Explicito LIMIT 10",
                    "MATCH (t:Track) RETURN t.name AS Faixa, t.popularity AS Popularidade ORDER BY t.popularity DESC LIMIT 10",
                    "MATCH (ar:Artist)-[:PERFORMED_BY]->(t:Track) RETURN ar.name AS Artista, COUNT(t) AS TotalFaixas ORDER BY TotalFaixas DESC LIMIT 10"
            };

            for (String query : queries) {
                writer.write("Querie: " + query + "\n");
                var result = session.run(query);
                while (result.hasNext()) {
                    var record = result.next();
                    writer.write(record.toString() + "\n");
                }
                writer.write("\n");
            }

            System.out.println("Queries executadas com sucesso! Resultados guardados em " + outputFilePath);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static Integer parseInteger(String value) {
        try {
            return value.isEmpty() ? null : Integer.parseInt(value.replace(",", ""));
        } catch (NumberFormatException e) {
            return null;
        }
    }
}




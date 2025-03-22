// 7. Permitir a pesquisa de todos os videos de determinado autor;
SELECT * FROM videos_by_author WHERE owner_username = 'john_doe';

// 8. Permitir a pesquisa de comentarios por utilizador, ordenado inversamente pela data;
SELECT * FROM comments_by_author WHERE owner_username = 'john_doe' ORDER BY shared_date DESC;

// 9. Permitir a pesquisa de comentarios por videos, ordenado inversamente pela data;
SELECT * FROM comments WHERE video_id = 1 ORDER BY shared_date DESC;

// 10. Permitir a pesquisa do rating medio de um video e quantas vezes foi votado;
SELECT rating_sum, rating_count FROM video_ratings_summary WHERE video_id = 10;


// 1. Os ultimos 3 comentarios introduzidos para um video;
SELECT * FROM comments WHERE video_id = 4 ORDER BY shared_date DESC LIMIT 3;

// 2. Lista das tags de determinado video;
SELECT tags FROM videos WHERE video_id = 4;

// 3. Todos os videos com a tag Aveiro;
SELECT * FROM videos_by_tag WHERE tag='aveiro';

// 4.a. Os últimos 5 eventos de determinado vídeo realizados por um utilizador;
SELECT * FROM events WHERE video_id = 2 AND user_username = 'john_doe' ORDER BY event_date DESC LIMIT 5;

// 4.b. Todos os eventos de determinado utilizador;
SELECT * FROM events_by_user WHERE user_username = 'john_doe';

// 4.c. Todos os eventos de determinado utilizador to tipo "pause"
// Neste caso tive que criar um indice sobre o campo event_type para poder fazer a query.
CREATE INDEX ON events_by_user(event_type);
SELECT * FROM events_by_user WHERE user_username = 'john_doe' AND event_type = 'pause';

// 5. Videos partilhados por determinado utilizador (maria1987, por exemplo) num determinado periodo de tempo (Agosto de 2017, por exemplo);
SELECT * FROM videos_by_author WHERE owner_username = 'charlie_brown' AND share_date >= '2023-04-06' AND share_date < '2023-07-06';

// 6. Os ultimos 10 videos, ordenado inversamente pela data da partilhada;
Para conseguir fazer esta query eu teria que criar uma nova tabela em que a shared_date do video fosse a partition key,
neste comando em especifico eu teria que usar clustering para conseguir obter os ultimos 10 videos e em cassandra não é possivel
fazer clustering sobre a partition key, por isso não é possivel fazer esta query.

// 7. Todos os seguidores (followers) de determinado video;
SELECT * FROM followers WHERE video_id = 1;

// 8. Todos os comentarios (dos videos) que determinado utilizador esta a seguir (following);
SELECT * FROM comments_by_followed_videos WHERE follower_username = 'jane_smith';

// 9. Os 5 videos com maior rating;
Da maneira como eu fiz a tabela de ratings não é possivel fazer esta query, teria que criar uma nova tabela em que a partition key
fosse o rating e a clustering key fosse o video_id, mas mesmo assim não seria possivel fazer esta query porque não é possivel fazer
clustering sobre a partition key.

// 10. Uma query que retorne todos os videos e que mostre claramente a forma pela qual estao ordenados;
SELECT * FROM videos_by_author;

// 11. Lista com as Tags existentes e o numero de videos catalogados com cada uma delas;
SELECT tag, COUNT(*) AS videos_count FROM videos_by_tag GROUP BY tag;

// 12. Lista com todos os vídeos marcados como favoritos por um determinado utilizador
SELECT * FROM favorites_by_user WHERE user_username = 'john_doe';

// 13. Lista com todos os utilizadores que marcaram como favoritos num determinado vídeo
SELECT user_username, favorited_date FROM favorites_by_video WHERE video_id = 6;



// 7. Permitir a pesquisa de todos os videos de determinado autor;
SELECT *
FROM videos_by_author
WHERE author_username = 'eve_t';

// 8. Permitir a pesquisa de comentarios por utilizador, ordenado inversamente pela data;
SELECT *
FROM comments_by_user WHERE author_username = 'eve_t';

// 9. Permitir a pesquisa de comentarios por videos, ordenado inversamente pela data;
SELECT *
FROM comments WHERE video_id=cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4;

// 10. Permitir a pesquisa do rating medio de um video e quantas vezes foi votado;
SELECT AVG(rating) AS average_rating, COUNT(rating) AS total_votes
FROM video_ratings
WHERE video_id = cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4;



// 1. Os ultimos 3 comentarios introduzidos para um video;
SELECT comment, author_id, comment_timestamp
FROM comments
WHERE video_id = cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4
ORDER BY comment_timestamp DESC
LIMIT 3;


// 2. Lista das tags de determinado video;UA.DETI.CBD- 2023/24 15
SELECT tags
FROM videos
WHERE video_id = cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4;

// 3. Todos os videos com a tag Aveiro;

//O cassandra não suporta consulas eficiente em coleções sem indexação ou tabelas auxiliares,
-- por isso é necessário criar um índice para a coluna tags ou uma tabela, eu optei por crear um indice.
-- Está no ficheiro DDL

SELECT video_id, name, description, tags
FROM videos
WHERE tags CONTAINS 'Aveiro';


// 4.a. Os últimos 5 eventos de determinado vídeo realizados por um utilizador;
SELECT event_type, event_timestamp
FROM video_events
WHERE video_id = cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4 AND username = 'eve_t'
ORDER BY event_timestamp DESC
LIMIT 5;


// 4.b. Todos os eventos de determinado utilizador;
// Para conseguir concretizar esta pesquisa tenho que usar ALLOW FILTERING, porque a query não está a usar a chave primária.
// Não é recomendado usar ALLOW FILTERING em produção, porque pode causar problemas de performance.
SELECT event_type, event_timestamp, username
FROM video_events
WHERE username = 'eve_t'
ALLOW FILTERING;

// 4.c. Todos os eventos de determinado utilizador to tipo "pause"
// Para conseguir concretizar esta pesquisa tenho que usar ALLOW FILTERING, porque a query não está a usar a chave primária.
// Não é recomendado usar ALLOW FILTERING em produção, porque pode causar problemas de performance.
SELECT event_type, event_timestamp, video_id
FROM video_events
WHERE username = 'eve_t' AND event_type = 'pause'
ALLOW FILTERING;


// 5. Videos partilhados por determinado utilizador (maria1987, por exemplo) num determinado periodo de tempo (Agosto de 2017, por exemplo);
SELECT video_id, video_name, description, tags, upload_timestamp
FROM videos_by_author
WHERE author_username = 'eve_t'
  AND upload_timestamp >= '2017-08-01'
  AND upload_timestamp < '2024-12-01';


// 6. Os ultimos 10 videos, ordenado inversamente pela data da partilhada;
// Para concretizar esta query tenho que especificar algo ou seja um user por exemplo.
// Por isso o mais fácil seria criar uma tabela auxiliar.


// 7. Todos os seguidores (followers) de determinado video;
SELECT follower_username, follow_timestamp
FROM video_followers
WHERE video_id =  cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4;


// 8. Todos os comentarios (dos videos) que determinado utilizador esta a seguir (following);
// Seria necessário criar mais tabelas uma vez que cassandra não suporta joins.

// 9. Os 5 videos com maior rating;
//Esta querie não é possivel de ser concretizada sem criar uma tabela auxiliar. Ou especificar uma partition key.


// 10. Uma query que retorne todos os videos e que mostre claramente a forma pela qual estao ordenados;
SELECT video_id, video_name, upload_timestamp
FROM videos_by_author
WHERE author_username = 'eve_t'
ORDER BY upload_timestamp DESC;

// 11. Lista com as Tags existentes e o numero de videos catalogados com cada uma delas;
// Para concretizar esta pesquisa teria que criar uma tabela auxiliar.

// 12.Qual o total de comentários feitos por cada utilizador?
SELECT author_username, COUNT(*) AS total_comments
FROM comments_by_user;

// 13.Quantos vídeos foram compartilhados em um determinado mês?
// Para concretizar esta pesquisa tenho que usar ALLOW FILTERING, porque a query não está a usar a chave primária.
SELECT COUNT(*) AS total_videos
FROM videos_by_author
WHERE upload_timestamp >= '2024-10-01' AND upload_timestamp < '2024-11-01'
ALLOW FILTERING;

// 14.Listar seguidores com timestamps entre 2024-10-01 e 2024-11-01
SELECT follower_username, video_id, follow_timestamp
FROM video_followers
WHERE follow_timestamp >= '2024-10-01' AND follow_timestamp < '2024-11-01'
    ALLOW FILTERING;


// 1. Listar todos os artistas que têm "R&B" como género
SELECT * FROM artists WHERE genres CONTAINS 'R&B';

// 2. Procurar todas as músicas que tenham "Travis Scott" como artista
SELECT * FROM songs WHERE artists CONTAINS 'Travis Scott';

// 3. Listar todos os artistas que têm canal no youtube
SELECT * FROM artists WHERE socials CONTAINS KEY 'youtube';

// 4. Listar as útlimas músicas ouvidas pelo utilizador beatriz_oliveira
SELECT recently_played FROM users WHERE username = 'beatriz_oliveira';

// 5. Listar os géneros dos artistas e a quantidade de artistas de cada género
SELECT genre, COUNT(*) AS artists_count FROM artists_by_genre GROUP BY genre;

// 6. Listar todos os artistas do género Rap em ordem decrescente de nome, limitado a 5
SELECT genre, name, description FROM artists_by_genre WHERE genre = 'Rap' ORDER BY name DESC LIMIT 5;

// 7. Listar todos os utilizadores que segurem a playlist com id 1
SELECT followers FROM playlists WHERE id = 1;

// 8. Encontrar uma música chamada "90210", e mostrar as suas informações
SELECT * FROM songs WHERE title = '90210';

// 9. Listar todas as playlists que têm a música "90210"
//Não consegui perceber porque é que não funciona
SELECT * FROM playlists WHERE songs CONTAINS KEY '90210';

// 10. Listar todos os utilizadores que seguem o utilizador "joao_santos"
SELECT following FROM users WHERE username = 'joao_santos';





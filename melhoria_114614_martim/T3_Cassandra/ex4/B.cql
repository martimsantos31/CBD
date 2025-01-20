INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('martim_souto', 'martimsouto@ua.pt', {'90210','HOODBYAIR','Timeless'}, {'Vibes'}, {}, {}, {'lucas_montano'}, []);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('lucas_montano', 'lucas@gmail.com', {'Self Control', 'TORE UP'}, {'Chill Vibes', 'Workout Mix'}, {'Frank Ocean', 'Travis Scott'}, {'martim_souto'}, {}, ['90210', 'Self Control']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('ana_silva', 'ana.silva@gmail.com', {'Type Shit', 'Love Hurts'}, {'Hip Hop Hits'}, {'Playboi Carti', 'Travis Scott'}, {}, {}, ['HOODBYAIR']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('beatriz_oliveira', 'beatriz@outlook.com', {'Timeless'}, {'R&B Mix'}, {'The Weeknd'}, {'ana_silva'}, {}, ['Timeless','Type Shit','90210','HOODBYAIR','EVILJORDAN']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('maria_costa', 'maria@hotmail.com', {'Self Control', 'Unwritten'}, {'Feel Good'}, {'Frank Ocean', 'Natasha Bedingfield'}, {}, {}, ['Unwritten']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('joao_santos', 'joao@gmail.com', {'THE SCOTTS', 'DtMF'}, {'Rap Essentials'}, {'Travis Scott', 'Bad Bunny'}, {'lucas_montano'}, {}, ['THE SCOTTS']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('pedro_ferreira', 'pedro@ua.pt', {'Not like us'}, {'Hip Hop Classics'}, {'Kendrick Lamar'}, {}, {}, ['Not like us']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('carolina_lima', 'carolina@gmail.com', {'EVILJORDAN', 'Type Shit'}, {'Trap Mix'}, {'Playboi Carti'}, {'ana_silva'}, {}, ['EVILJORDAN']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('ricardo_santos', 'ricardo@outlook.com', {'90210', 'THE SCOTTS'}, {'Travis Mix'}, {'Travis Scott', 'Kid Cudi'}, {}, {}, ['90210']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('sofia_martins', 'sofia@gmail.com', {'TORE UP', 'Love Hurts'}, {'New Releases'}, {'Don Toliver', 'Travis Scott'}, {'lucas_montano'}, {}, ['TORE UP']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('miguel_costa', 'miguel@ua.pt', {'DtMF', 'Timeless'}, {'Latin Hits'}, {'Bad Bunny', 'The Weeknd'}, {}, {}, ['DtMF']);
INSERT INTO users (username, email, favorite_songs, favorite_playlists, favorite_artists, following, followers, recently_played)
VALUES ('ines_silva', 'ines@gmail.com', {'Unwritten', 'Self Control'}, {'Pop Classics'}, {'Natasha Bedingfield', 'Frank Ocean'}, {'maria_costa'}, {}, ['Unwritten']);

INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Travis Scott', {'Hip Hop', 'Rap'}, 'Famous rapper and producer', {'lucas_montano'}, {'instagram': 'travisscott'});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Kacy Hill', {'Pop'}, 'Rising pop artist', {}, {});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Playboi Carti', {'Hip Hop', 'Rap'}, 'Trap music star', {'ana_silva'}, {'instagram': 'playboicarti'});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('The Weeknd', {'Pop', 'R&B'}, 'International R&B icon', {'beatriz_oliveira'}, {'instagram': 'theweeknd'});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Future', {'Rap'}, 'Top-charting rap artist', {}, {'instagram': 'future'});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Natasha Bedingfield', {'Pop'}, 'Famous for motivational hits', {}, {});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Kendrick Lamar', {'Hip Hop', 'Rap'}, 'Pulitzer-winning rapper', {}, {});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Bad Bunny', {'Reggaeton', 'Latin'}, 'Global Latin music star', {}, {'instagram': 'badbunny', 'youtube': 'benito'});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Frank Ocean', {'R&B'}, 'Reclusive R&B star', {'maria_costa'}, {'instagram': 'frankocean'});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Don Toliver', {'Rap', 'R&B'}, 'Melodic rap innovator', {}, {'instagram': 'dontoliver'});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Kid Cudi', {'Rap', 'Alternative'}, 'Pioneering emo rapper', {}, {'instagram': 'kidcudi'});
INSERT INTO artists (name, genres, description, followers, socials)
VALUES ('Drake', {'Hip Hop', 'Rap', 'R&B'}, 'Chart-topping artist', {'ricardo_santos'}, {'instagram': 'drake', 'twitter': 'drake'});

INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Travis Scott', 'Rap', 'Famous rapper and producer', {'lucas_montano'}, {'instagram': 'travisscott'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Travis Scott', 'Hip Hop', 'Famous rapper and producer', {'lucas_montano'}, {'instagram': 'travisscott'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Kacy Hill', 'Pop', 'Rising pop artist', {}, {});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Playboi Carti', 'Hip Hop', 'Trap music star', {'ana_silva'}, {'instagram': 'playboicarti'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Playboi Carti', 'Rap', 'Trap music star', {'ana_silva'}, {'instagram': 'playboicarti'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('The Weeknd', 'Pop', 'International R&B icon', {'beatriz_oliveira'}, {'instagram': 'theweeknd'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('The Weeknd', 'R&B', 'International R&B icon', {'beatriz_oliveira'}, {'instagram': 'theweeknd'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Future', 'Rap', 'Top-charting rap artist', {}, {'instagram': 'future'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Natasha Bedingfield', 'Pop', 'Famous for motivational hits', {}, {});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Kendrick Lamar', 'Hip Hop', 'Pulitzer-winning rapper', {}, {});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Kendrick Lamar', 'Rap', 'Pulitzer-winning rapper', {}, {});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Bad Bunny', 'Latin', 'Global Latin music star', {}, {'instagram': 'badbunny', 'youtube': 'benito'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Bad Bunny', 'Reggaeton', 'Global Latin music star', {}, {'instagram': 'badbunny', 'youtube': 'benito'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Frank Ocean', 'R&B', 'Reclusive R&B star', {'maria_costa'}, {'instagram': 'frankocean'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Don Toliver', 'R&B', 'Melodic rap innovator', {}, {'instagram': 'dontoliver'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Don Toliver', 'Rap', 'Melodic rap innovator', {}, {'instagram': 'dontoliver'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Kid Cudi',  'Alternative', 'Pioneering emo rapper', {}, {'instagram': 'kidcudi'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Kid Cudi', 'Rap',  'Pioneering emo rapper', {}, {'instagram': 'kidcudi'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Drake', 'Hip Hop', 'Chart-topping artist', {'ricardo_santos'}, {'instagram': 'drake', 'twitter': 'drake'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Drake', 'Rap', 'Chart-topping artist', {'ricardo_santos'}, {'instagram': 'drake', 'twitter': 'drake'});
INSERT INTO artists_by_genre (name, genre, description, followers, socials)
VALUES ('Drake', 'R&B', 'Chart-topping artist', {'ricardo_santos'}, {'instagram': 'drake', 'twitter': 'drake'});

INSERT INTO songs (id, title, duration, artists)
VALUES (1, '90210', 339, {'Travis Scott', 'Kacy Hill'});
INSERT INTO songs (id, title, duration, artists)
VALUES (2, 'HOODBYAIR', 293, {'Playboi Carti'});
INSERT INTO songs (id, title, duration, artists)
VALUES (3, 'Timeless', 197, {'Playboi Carti', 'The Weeknd'});
INSERT INTO songs (id, title, duration, artists)
VALUES (4, 'Love Hurts', 181, {'Travis Scott', 'Playboi Carti'});
INSERT INTO songs (id, title, duration, artists)
VALUES (5, 'Type Shit', 228, {'Travis Scott', 'Playboi Carti', 'Future'});
INSERT INTO songs (id, title, duration, artists)
VALUES (6, 'Unwritten', 259, {'Natasha Bedingfield'});
INSERT INTO songs (id, title, duration, artists)
VALUES (7, 'Not like us', 274, {'Kendrick Lamar'});
INSERT INTO songs (id, title, duration, artists)
VALUES (8, 'DtMF', 236, {'Bad Bunny'});
INSERT INTO songs (id, title, duration, artists)
VALUES (9, 'EVILJORDAN', 206, {'Playboi Carti'});
INSERT INTO songs (id, title, duration, artists)
VALUES (10, 'Self Control', 249, {'Frank Ocean'});
INSERT INTO songs (id, title, duration, artists)
VALUES (11, 'TORE UP', 127, {'Don Toliver'});
INSERT INTO songs (id, title, duration, artists)
VALUES (12, 'THE SCOTTS', 165, {'Travis Scott', 'Kid Cudi'});

INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (1, '90210', 339, {'Travis Scott', 'Kacy Hill'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (2, 'HOODBYAIR', 293, {'Playboi Carti'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (3, 'Timeless', 197, {'Playboi Carti', 'The Weeknd'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (4, 'Love Hurts', 181, {'Travis Scott', 'Playboi Carti'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (5, 'Type Shit', 228, {'Travis Scott', 'Playboi Carti', 'Future'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (6, 'Unwritten', 259, {'Natasha Bedingfield'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (7, 'Not like us', 274, {'Kendrick Lamar'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (8, 'DtMF', 236, {'Bad Bunny'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (9, 'EVILJORDAN', 206, {'Playboi Carti'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (10, 'Self Control', 249, {'Frank Ocean'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (11, 'TORE UP', 127, {'Don Toliver'});
INSERT INTO songs_by_duration (id, title, duration, artists)
VALUES (12, 'THE SCOTTS', 165, {'Travis Scott', 'Kid Cudi'});

INSERT INTO playlists (id, title, description, songs, followers)
VALUES (1, 'Vibes', 'Chill music for relaxing', {'90210': 339, 'Self Control': 249, 'Timeless': 197}, {'martim_souto', 'lucas_montano'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (2, 'Hip Hop Hits', 'Best hip hop tracks', {'HOODBYAIR': 293, 'Type Shit': 228, 'Love Hurts': 181}, {'ana_silva', 'carolina_lima'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (3, 'R&B Mix', 'Smooth R&B collection', {'Timeless': 197, 'Self Control': 249}, {'beatriz_oliveira'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (4, 'Feel Good', 'Uplifting tunes', {'Unwritten': 259, 'Self Control': 249}, {'maria_costa', 'ines_silva'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (5, 'Rap Essentials', 'Essential rap tracks', {'THE SCOTTS': 165, 'Not like us': 274}, {'joao_santos', 'pedro_ferreira'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (6, 'Trap Mix', 'Latest trap hits', {'EVILJORDAN': 206, 'Type Shit': 228}, {'carolina_lima'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (7, 'Travis Mix', 'Best of Travis Scott', {'90210': 339, 'THE SCOTTS': 165, 'Love Hurts': 181}, {'ricardo_santos'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (8, 'New Releases', 'Fresh tracks', {'TORE UP': 127, 'DtMF': 236}, {'sofia_martins'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (9, 'Latin Hits', 'Top Latin music', {'DtMF': 236}, {'miguel_costa'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (10, 'Pop Classics', 'Timeless pop hits', {'Unwritten': 259}, {'ines_silva'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (11, 'Workout Mix', 'High-energy tracks', {'Type Shit': 228, 'HOODBYAIR': 293, 'THE SCOTTS': 165}, {'lucas_montano'});
INSERT INTO playlists (id, title, description, songs, followers)
VALUES (12, 'Chill Vibes', 'Relaxing playlist', {'Self Control': 249, 'Timeless': 197, '90210': 339}, {'lucas_montano', 'sofia_martins'});


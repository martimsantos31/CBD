// UDF
CREATE OR REPLACE FUNCTION sum_playlist_durations(state int, song_duration map<text, int>)
    RETURNS NULL ON NULL INPUT
    RETURNS int
    LANGUAGE java AS '
    int total = state;
    if (song_duration != null) {
        for (int duration : song_duration.values()) {
            total += duration;
        }
    }
    return total;
';
// Query com a UDF, que retorna a duração total de uma playlist
SELECT title, sum_playlist_durations(0, songs) AS total_duration FROM playlists WHERE id = 4;


//UDA
CREATE FUNCTION IF NOT EXISTS count_followers(state int, followers set<text>)
    RETURNS NULL ON NULL INPUT
    RETURNS int
    LANGUAGE java
    AS 'return state + (followers == null ? 0 : followers.size());';

CREATE AGGREGATE IF NOT EXISTS total_followers(set<text>)
    SFUNC count_followers
    STYPE int
    INITCOND 0;

// Query com a UDA, que retorna o total de seguidores de um artista de um determinado género
SELECT total_followers(followers) AS total_followers_count FROM artists_by_genre WHERE genre = 'Hip Hop';







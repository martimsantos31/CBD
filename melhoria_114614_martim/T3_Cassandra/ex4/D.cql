CREATE INDEX idx_playlists_songs ON playlists (songs);
CREATE INDEX idx_artists_genre ON artists (genres);
CREATE INDEX idx_artists_socials ON artists (socials);
CREATE INDEX idx_songs_title ON songs (title);
CREATE INDEX idx_songs_artists ON songs (artists);

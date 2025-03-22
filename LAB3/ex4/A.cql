DROP KEYSPACE IF EXISTS streaming_platform;

CREATE KEYSPACE streaming_platform WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

use streaming_platform;

CREATE TABLE users (
    username text PRIMARY KEY,
    email text,
    favorite_songs set<text>,
    favorite_playlists set<text>,
    favorite_artists set<text>,
    following set<text>,
    followers set<text>,
    recently_played list<text>
);

CREATE TABLE artists (
    name text PRIMARY KEY,
    genres set<text>,
    description text,
    followers set<text>,
    socials map<text, text>
);

CREATE TABLE artists_by_genre (
    genre text,
    name text,
    description text,
    followers set<text>,
    socials map<text, text>,
    PRIMARY KEY (genre, name)
);

CREATE TABLE songs (
    id int PRIMARY KEY,
    title text,
    duration int,
    artists set<text>,
);

CREATE TABLE playlists (
    id int PRIMARY KEY,
    title text ,
    description text,
    songs map<text,int>,
    followers set<text>
);



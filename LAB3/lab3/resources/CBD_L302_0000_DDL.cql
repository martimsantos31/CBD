
DROP KEYSPACE IF EXISTS videos;


CREATE KEYSPACE videos WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };


USE videos;


CREATE TABLE users (
                       user_id UUID PRIMARY KEY,
                       username TEXT,
                       name TEXT,
                       email TEXT,
                       registration_timestamp TIMESTAMP
);


CREATE TABLE videos (
                        video_id UUID PRIMARY KEY,
                        author_id UUID,
                        name TEXT,
                        description TEXT,
                        tags SET<TEXT>,
                        upload_timestamp TIMESTAMP
);


CREATE TABLE comments (
                          video_id UUID,
                          author_id UUID,
                          comment_timestamp TIMESTAMP,
                          comment TEXT,
                          PRIMARY KEY (video_id, comment_timestamp)
) WITH CLUSTERING ORDER BY (comment_timestamp DESC);


CREATE TABLE video_followers (
                                 video_id UUID,
                                 follower_username TEXT,
                                 follow_timestamp TIMESTAMP,
                                 PRIMARY KEY(video_id, follower_username)
);


CREATE TABLE video_events (
                              video_id UUID,
                              username TEXT,
                              event_type TEXT,
                              event_timestamp TIMESTAMP,
                              PRIMARY KEY((video_id, username), event_timestamp)
);


CREATE TABLE video_ratings (
                               video_id UUID,
                               rating INT,
                               PRIMARY KEY (video_id, rating)
);


CREATE TABLE videos_by_author (
                                  author_username TEXT,
                                  video_id UUID,
                                  video_name TEXT,
                                  description TEXT,
                                  tags SET<TEXT>,
                                  upload_timestamp TIMESTAMP,
                                  PRIMARY KEY (author_username, upload_timestamp)
) WITH CLUSTERING ORDER BY (upload_timestamp DESC);


CREATE TABLE comments_by_user (
                                  author_username TEXT,
                                  comment_timestamp TIMESTAMP,
                                  video_id UUID,
                                  comment TEXT,
                                  PRIMARY KEY (author_username, comment_timestamp)
) WITH CLUSTERING ORDER BY (comment_timestamp DESC);

CREATE INDEX IF NOT EXISTS tags_index ON videos (tags);

CREATE INDEX IF NOT EXISTS event_type_index ON video_events (event_type);

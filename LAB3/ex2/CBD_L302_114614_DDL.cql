DROP KEYSPACE IF EXISTS cbd_videos;


CREATE KEYSPACE cbd_videos WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };


use cbd_videos;


CREATE TABLE users(
    username TEXT PRIMARY KEY,
    name TEXT,
    email TEXT,
    signup_date TIMESTAMP
);


CREATE TABLE videos(
    video_id INT PRIMARY KEY ,
    owner_username TEXT,
    name TEXT,
    description TEXT,
    tags SET<TEXT>,
    share_date TIMESTAMP,
);


CREATE TABLE videos_by_author (
    video_id INT,
    owner_username TEXT,
    name TEXT,
    description TEXT,
    tags SET<TEXT>,
    share_date TIMESTAMP,
    PRIMARY KEY (owner_username, share_date, video_id)
) WITH CLUSTERING ORDER BY (share_date DESC, video_id ASC);


CREATE TABLE videos_by_tag(
    video_id INT,
    owner_username TEXT,
    name TEXT,
    description TEXT,
    tag TEXT,
    share_date TIMESTAMP,
    PRIMARY KEY (tag, video_id)
);


CREATE TABLE comments(
    video_id INT ,
    owner_username TEXT,
    description TEXT,
    shared_date TIMESTAMP,
    PRIMARY KEY (video_id, shared_date)
) WITH CLUSTERING ORDER BY (shared_date DESC);


CREATE TABLE comments_by_author(
    video_id INT,
    owner_username TEXT,
    description TEXT,
    shared_date TIMESTAMP,
    PRIMARY KEY (owner_username, shared_date)
) WITH CLUSTERING ORDER BY (shared_date DESC);


CREATE TABLE comments_by_followed_videos(
    video_id INT,
    follower_username TEXT,
    comment_username TEXT,
    description TEXT,
    shared_date TIMESTAMP,
    PRIMARY KEY (follower_username, shared_date)
);


CREATE TABLE followers(
    video_id INT,
    follower_username TEXT,
    PRIMARY KEY (video_id, follower_username)
);


CREATE TABLE events(
    video_id INT,
    user_username TEXT,
    event_type TEXT,
    event_date TIMESTAMP,
    PRIMARY KEY ((video_id, user_username), event_date)
);


CREATE TABLE events_by_user(
    video_id INT,
    user_username TEXT,
    event_type TEXT,
    event_date TIMESTAMP,
    PRIMARY KEY ((user_username), event_date)
);


CREATE TABLE ratings (
    video_id INT,
    rating_id INT,
    rating INT,
    PRIMARY KEY (video_id, rating_id)
);


CREATE TABLE video_ratings_summary (
    video_id INT,
    rating_sum INT,
    rating_count INT,
    PRIMARY KEY (video_id, rating_sum)
)WITH CLUSTERING ORDER BY (rating_sum DESC);


CREATE TABLE favorites_by_user (
    user_username TEXT,
    video_id INT,
    favorited_date TIMESTAMP,
    PRIMARY KEY ((user_username), video_id)
);


CREATE TABLE favorites_by_video (
    video_id INT,
    user_username TEXT,
    favorited_date TIMESTAMP,
    PRIMARY KEY ((video_id), user_username)
);
















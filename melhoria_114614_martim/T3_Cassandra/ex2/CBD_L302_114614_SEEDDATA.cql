INSERT INTO users (username, name, email, signup_date) VALUES ('john_doe', 'John Doe', 'john@example.com', '2023-01-01 10:00:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('jane_smith', 'Jane Smith', 'jane@example.com', '2023-02-15 15:30:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('alice_wonder', 'Alice Wonder', 'alice@example.com', '2023-03-10 09:45:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('bob_builder', 'Bob Builder', 'bob@example.com', '2023-04-01 20:15:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('charlie_brown', 'Charlie Brown', 'charlie@example.com', '2023-04-15 18:00:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('daisy_duck', 'Daisy Duck', 'daisy@example.com', '2023-05-01 11:00:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('eric_cartman', 'Eric Cartman', 'eric@example.com', '2023-05-10 09:00:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('fiona_shrek', 'Fiona Shrek', 'fiona@example.com', '2023-06-01 14:30:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('george_wash', 'George Wash', 'george@example.com', '2023-06-10 16:15:00');
INSERT INTO users (username, name, email, signup_date) VALUES ('harry_potter', 'Harry Potter', 'harry@example.com', '2023-07-01 12:45:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (1, 'john_doe', 'Amazing Cats', 'Compilation of funny cat videos', {'aveiro', 'funny', 'pets'}, '2023-05-01 12:00:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (2, 'jane_smith', 'Delicious Recipes', 'How to cook the best pasta', {'cooking', 'food', 'recipes'}, '2023-05-02 14:30:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (3, 'alice_wonder', 'Travel Vlog', 'My trip to Japan', {'travel', 'japan', 'vlog'}, '2023-05-03 09:00:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (4, 'bob_builder', 'DIY Projects', 'Building a treehouse', {'diy', 'aveiro', 'woodworking'}, '2023-05-04 16:45:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (5, 'charlie_brown', 'Peanuts Gang', 'Stories of the Peanuts gang', {'animation', 'funny', 'cartoons'}, '2023-05-05 10:15:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (6, 'daisy_duck', 'Duck Tales', 'Adventures of Daisy and friends', {'adventure', 'ducks', 'animation'}, '2023-05-06 13:00:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (7, 'eric_cartman', 'South Park Clips', 'Best moments from South Park', {'comedy', 'tv', 'aveiro'}, '2023-05-07 15:45:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (8, 'fiona_shrek', 'Fairy Tale Land', 'Exploring the world of fairy tales', {'aveiro', 'stories', 'animation'}, '2023-05-08 14:30:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (9, 'george_wash', 'Historical Moments', 'Important events in history', {'history', 'education', 'learning'}, '2023-05-09 11:00:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (10, 'harry_potter', 'Wizarding World', 'Secrets of the Wizarding World', {'magic', 'aveiro', 'adventure'}, '2023-05-10 16:30:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (11, 'john_doe', 'Crazy Cats', 'Compilation of crazy cat videos', {'funny', 'pets'}, '2023-05-01 12:00:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (12, 'john_doe', 'History of my life', 'Explain why i am an youtuber', {'aveiro', 'history', 'me'}, '2023-05-01 19:00:00');
INSERT INTO videos (video_id, owner_username, name, description, tags, share_date)
VALUES (13, 'john_doe', 'Why sporting is my club', 'Sporting thebest club in the world', {'sports', 'funny', 'pets'}, '2023-05-01 16:00:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (1, 'john_doe', 'Amazing Cats', 'Compilation of funny cat videos_by_author', {'aveiro', 'funny', 'pets'}, '2023-05-01 12:00:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (2, 'jane_smith', 'Delicious Recipes', 'How to cook the best pasta', {'cooking', 'food', 'recipes'}, '2023-05-02 14:30:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (3, 'alice_wonder', 'Travel Vlog', 'My trip to Japan', {'travel', 'japan', 'vlog'}, '2023-05-03 09:00:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (4, 'bob_builder', 'DIY Projects', 'Building a treehouse', {'diy', 'aveiro', 'woodworking'}, '2023-05-04 16:45:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (5, 'charlie_brown', 'Peanuts Gang', 'Stories of the Peanuts gang', {'animation', 'funny', 'cartoons'}, '2023-05-05 10:15:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (6, 'daisy_duck', 'Duck Tales', 'Adventures of Daisy and friends', {'adventure', 'ducks', 'animation'}, '2023-05-06 13:00:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (7, 'eric_cartman', 'South Park Clips', 'Best moments from South Park', {'comedy', 'tv', 'aveiro'}, '2023-05-07 15:45:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (8, 'fiona_shrek', 'Fairy Tale Land', 'Exploring the world of fairy tales', {'aveiro', 'stories', 'animation'}, '2023-05-08 14:30:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (9, 'george_wash', 'Historical Moments', 'Important events in history', {'history', 'education', 'learning'}, '2023-05-09 11:00:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (10, 'harry_potter', 'Wizarding World', 'Secrets of the Wizarding World', {'magic', 'aveiro', 'adventure'}, '2023-05-10 16:30:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (11, 'john_doe', 'Crazy Cats', 'Compilation of crazy cat videos', {'funny', 'pets'}, '2023-05-01 12:00:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (12, 'john_doe', 'History of my life', 'Explain why i am an youtuber', {'aveiro', 'history', 'me'}, '2023-05-01 19:00:00');
INSERT INTO videos_by_author (video_id, owner_username, name, description, tags, share_date)
VALUES (13, 'john_doe', 'Why sporting is my club', 'Sporting thebest club in the world', {'sports', 'funny', 'pets'}, '2023-05-01 16:00:00');

INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (1, 'john_doe', 'Amazing Cats', 'Compilation of funny cat videos_by_author', 'aveiro' ,'2023-05-01 12:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (1, 'john_doe', 'Amazing Cats', 'Compilation of funny cat videos_by_author', 'funny' , '2023-05-01 12:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (1, 'john_doe', 'Amazing Cats', 'Compilation of funny cat videos_by_author',  'pets', '2023-05-01 12:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (2, 'jane_smith', 'Delicious Recipes', 'How to cook the best pasta', 'cooking', '2023-05-02 14:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (2, 'jane_smith', 'Delicious Recipes', 'How to cook the best pasta',  'food', '2023-05-02 14:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (2, 'jane_smith', 'Delicious Recipes', 'How to cook the best pasta', 'recipes', '2023-05-02 14:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (3, 'alice_wonder', 'Travel Vlog', 'My trip to Japan', 'travel', '2023-05-03 09:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (3, 'alice_wonder', 'Travel Vlog', 'My trip to Japan', 'japan', '2023-05-03 09:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (3, 'alice_wonder', 'Travel Vlog', 'My trip to Japan',  'vlog', '2023-05-03 09:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (4, 'bob_builder', 'DIY Projects', 'Building a treehouse', 'diy', '2023-05-04 16:45:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (4, 'bob_builder', 'DIY Projects', 'Building a treehouse', 'aveiro', '2023-05-04 16:45:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (4, 'bob_builder', 'DIY Projects', 'Building a treehouse', 'woodworking', '2023-05-04 16:45:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (5, 'charlie_brown', 'Peanuts Gang', 'Stories of the Peanuts gang', 'animation', '2023-05-05 10:15:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (5, 'charlie_brown', 'Peanuts Gang', 'Stories of the Peanuts gang',  'funny', '2023-05-05 10:15:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (5, 'charlie_brown', 'Peanuts Gang', 'Stories of the Peanuts gang', 'cartoons', '2023-05-05 10:15:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (6, 'daisy_duck', 'Duck Tales', 'Adventures of Daisy and friends', 'adventure', '2023-05-06 13:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (6, 'daisy_duck', 'Duck Tales', 'Adventures of Daisy and friends', 'ducks', '2023-05-06 13:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (6, 'daisy_duck', 'Duck Tales', 'Adventures of Daisy and friends',  'animation', '2023-05-06 13:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (7, 'eric_cartman', 'South Park Clips', 'Best moments from South Park', 'comedy', '2023-05-07 15:45:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (7, 'eric_cartman', 'South Park Clips', 'Best moments from South Park', 'tv', '2023-05-07 15:45:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (7, 'eric_cartman', 'South Park Clips', 'Best moments from South Park',  'aveiro','2023-05-07 15:45:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (8, 'fiona_shrek', 'Fairy Tale Land', 'Exploring the world of fairy tales', 'aveiro', '2023-05-08 14:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (8, 'fiona_shrek', 'Fairy Tale Land', 'Exploring the world of fairy tales',  'stories', '2023-05-08 14:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (8, 'fiona_shrek', 'Fairy Tale Land', 'Exploring the world of fairy tales',  'animation', '2023-05-08 14:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (9, 'george_wash', 'Historical Moments', 'Important events in history', 'history', '2023-05-09 11:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (9, 'george_wash', 'Historical Moments', 'Important events in history', 'education', '2023-05-09 11:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (9, 'george_wash', 'Historical Moments', 'Important events in history', 'learning', '2023-05-09 11:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (10, 'harry_potter', 'Wizarding World', 'Secrets of the Wizarding World', 'aveiro', '2023-05-10 16:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (10, 'harry_potter', 'Wizarding World', 'Secrets of the Wizarding World', 'magic', '2023-05-10 16:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (10, 'harry_potter', 'Wizarding World', 'Secrets of the Wizarding World', 'adventure', '2023-05-10 16:30:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (11, 'john_doe', 'Crazy Cats', 'Compilation of crazy cat videos', 'funny', '2023-05-01 12:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (11, 'john_doe', 'Crazy Cats', 'Compilation of crazy cat videos',  'pets', '2023-05-01 12:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (12, 'john_doe', 'History of my life', 'Explain why i am an youtuber', 'aveiro', '2023-05-01 19:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (12, 'john_doe', 'History of my life', 'Explain why i am an youtuber', 'history', '2023-05-01 19:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (12, 'john_doe', 'History of my life', 'Explain why i am an youtuber', 'me', '2023-05-01 19:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (13, 'john_doe', 'Why sporting is my club', 'Sporting thebest club in the world', 'sports', '2023-05-01 16:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (13, 'john_doe', 'Why sporting is my club', 'Sporting thebest club in the world', 'funny', '2023-05-01 16:00:00');
INSERT INTO videos_by_tag (video_id, owner_username, name, description, tag, share_date)
VALUES (13, 'john_doe', 'Why sporting is my club', 'Sporting thebest club in the world', 'pets', '2023-05-01 16:00:00');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (1, '2023-05-01 13:00:00', 'jane_smith', 'Loved this video!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (5, '2023-09-01 15:00:00', 'john_doe', 'Good video!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (6, '2023-05-07 18:00:00', 'john_doe', 'I hate this video!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (1, '2023-05-01 14:00:00', 'alice_wonder', 'So funny!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (1, '2023-05-01 15:00:00', 'bob_builder', 'Great compilation!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (2, '2023-05-02 13:00:00', 'john_doe', 'Great recipe, I’ll try it.');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (2, '2023-05-02 14:00:00', 'charlie_brown', 'Looks delicious!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (3, '2023-05-03 10:00:00', 'daisy_duck', 'Amazing scenery!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (3, '2023-05-03 11:00:00', 'eric_cartman', 'Can’t wait to visit!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (4, '2023-05-04 14:00:00', 'fiona_shrek', 'This is so creative!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (4, '2023-05-04 15:00:00', 'george_wash', 'Inspiring project!');
INSERT INTO comments (video_id, shared_date, owner_username, description)
VALUES (5, '2023-05-05 12:00:00', 'harry_potter', 'Love the Peanuts gang!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (1, '2023-05-01 13:00:00', 'jane_smith', 'Loved this video!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (5, '2023-09-01 15:00:00', 'john_doe', 'Good video!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (6, '2023-05-07 18:00:00', 'john_doe', 'I hate this video!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (1, '2023-05-01 14:00:00', 'alice_wonder', 'So funny!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (1, '2023-05-01 15:00:00', 'bob_builder', 'Great compilation!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (2, '2023-05-02 13:00:00', 'john_doe', 'Great recipe, I’ll try it.');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (2, '2023-05-02 14:00:00', 'charlie_brown', 'Looks delicious!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (3, '2023-05-03 10:00:00', 'daisy_duck', 'Amazing scenery!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (3, '2023-05-03 11:00:00', 'eric_cartman', 'Can’t wait to visit!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (4, '2023-05-04 14:00:00', 'fiona_shrek', 'This is so creative!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (4, '2023-05-04 15:00:00', 'george_wash', 'Inspiring project!');
INSERT INTO comments_by_author (video_id, shared_date, owner_username, description)
VALUES (5, '2023-05-05 12:00:00', 'harry_potter', 'Love the Peanuts gang!');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'jane_smith', 'jane_smith', 'Loved this video!', '2023-05-01 13:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'jane_smith', 'alice_wonder', 'So funny!', '2023-05-01 14:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'jane_smith', 'bob_builder', 'Great compilation!', '2023-05-01 15:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'alice_wonder', 'jane_smith', 'Loved this video!', '2023-05-01 13:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'alice_wonder', 'alice_wonder', 'So funny!', '2023-05-01 14:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'alice_wonder', 'bob_builder', 'Great compilation!', '2023-05-01 15:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'harry_potter', 'jane_smith', 'Loved this video!', '2023-05-01 13:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'harry_potter', 'alice_wonder', 'So funny!', '2023-05-01 14:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (1, 'harry_potter', 'bob_builder', 'Great compilation!', '2023-05-01 15:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (2, 'fiona_shrek', 'john_doe', 'Great recipe, I’ll try it.', '2023-05-02 13:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (2, 'fiona_shrek', 'charlie_brown', 'Looks delicious!', '2023-05-02 14:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (2, 'eric_cartman', 'john_doe', 'Great recipe, I’ll try it.', '2023-05-02 13:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (2, 'eric_cartman', 'charlie_brown', 'Looks delicious!','2023-05-02 14:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (3, 'eric_cartman', 'daisy_duck', 'Amazing scenery!', '2023-05-03 10:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (3, 'eric_cartman', 'eric_cartman', 'Can’t wait to visit!', '2023-05-03 11:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (4, 'daisy_duck', 'fiona_shrek', 'This is so creative', '2023-05-04 14:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (4, 'daisy_duck', 'george_wash', 'Inspiring project!', '2023-05-04 15:00:00');
INSERT INTO comments_by_followed_videos (video_id, follower_username,comment_username,description,shared_date)
VALUES (6, 'alice_wonder', 'john_doe', 'I hate this video!','2023-05-07 18:00:00');
INSERT INTO followers (video_id, follower_username) VALUES (1, 'jane_smith');
INSERT INTO followers (video_id, follower_username) VALUES (1, 'alice_wonder');
INSERT INTO followers (video_id, follower_username) VALUES (1, 'harry_potter');
INSERT INTO followers (video_id, follower_username) VALUES (2, 'fiona_shrek');
INSERT INTO followers (video_id, follower_username) VALUES (2, 'eric_cartman');
INSERT INTO followers (video_id, follower_username) VALUES (3, 'eric_cartman');
INSERT INTO followers (video_id, follower_username) VALUES (4, 'daisy_duck');
INSERT INTO followers (video_id, follower_username) VALUES (6, 'alice_wonder');
INSERT INTO followers (video_id, follower_username) VALUES (9, 'jane_smith');
INSERT INTO followers (video_id, follower_username) VALUES (6, 'alice_wonder');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (1, 'jane_smith', 'play', '2023-05-01 13:10:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (1, 'alice_wonder', 'pause', '2023-05-01 14:05:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'stop', '2023-05-02 15:10:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'play', '2023-05-02 15:11:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'pause', '2023-05-02 15:12:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'play', '2023-05-02 15:13:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'stop', '2023-05-02 15:14:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (2, 'charlie_brown', 'play', '2023-05-02 15:15:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (3, 'daisy_duck', 'play', '2023-05-03 10:10:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (3, 'eric_cartman', 'pause', '2023-05-03 10:15:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (4, 'fiona_shrek', 'play', '2023-05-04 14:30:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (4, 'george_wash', 'pause', '2023-05-04 14:35:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (5, 'harry_potter', 'stop', '2023-05-05 12:50:00');
INSERT INTO events (video_id, user_username, event_type, event_date)
VALUES (5, 'john_doe', 'play', '2023-05-05 12:55:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (1, 'jane_smith', 'play', '2023-05-01 13:10:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (1, 'alice_wonder', 'pause', '2023-05-01 14:05:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'stop', '2023-05-02 15:10:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'play', '2023-05-02 15:11:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'pause', '2023-05-02 15:12:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'play', '2023-05-02 15:13:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (2, 'john_doe', 'stop', '2023-05-02 15:14:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (2, 'charlie_brown', 'play', '2023-05-02 15:15:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (3, 'daisy_duck', 'play', '2023-05-03 10:10:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (3, 'eric_cartman', 'pause', '2023-05-03 10:15:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (4, 'fiona_shrek', 'play', '2023-05-04 14:30:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (4, 'george_wash', 'pause', '2023-05-04 14:35:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (5, 'harry_potter', 'stop', '2023-05-05 12:50:00');
INSERT INTO events_by_user (video_id, user_username, event_type, event_date)
VALUES (5, 'john_doe', 'play', '2023-05-05 12:55:00');
INSERT INTO ratings (video_id, rating_id, rating) VALUES (1, 101, 5);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (1, 102, 4);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (2, 201, 3);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (2, 202, 5);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (3, 301, 4);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (3, 302, 5);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (4, 401, 4);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (5, 501, 5);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (5, 502, 3);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (6, 601, 2);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (7, 701, 4);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (7, 702, 3);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (7, 703, 5);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (7, 704, 4);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (8, 801, 2);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (8, 802, 3);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (9, 901, 2);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (10, 1001, 5);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (10, 1002, 1);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (10, 1003, 5);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (10, 1004, 5);
INSERT INTO ratings (video_id, rating_id, rating) VALUES (10, 1005, 4);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (1, 5, 2);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (2, 4, 2);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (3, 5, 2);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (4, 4, 1);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (5, 4, 2);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (6, 2, 1);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (7, 4, 4);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (8, 3, 2);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (9, 2, 1);
INSERT INTO video_ratings_summary (video_id, rating_sum, rating_count) VALUES (10, 4, 5);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (1, 5, 2);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (2, 4, 2);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (3, 5, 2);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (4, 4, 1);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (5, 4, 2);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (6, 2, 1);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (7, 4, 4);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (8, 3, 2);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (9, 2, 1);
INSERT INTO video_ratings_by_sum (video_id, rating_sum, rating_count) VALUES (10, 4, 5);
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('john_doe', 1, '2023-05-01 12:00:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('john_doe', 2, '2023-05-01 12:10:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('jane_smith', 1, '2023-05-01 13:00:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('jane_smith', 5, '2023-05-01 13:20:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('alice_wonder', 3, '2023-05-01 14:00:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('bob_builder', 4, '2023-05-01 15:00:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('charlie_brown', 2, '2023-05-01 15:30:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('eric_cartman', 7, '2023-05-03 10:15:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('fiona_shrek', 8, '2023-05-04 12:00:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('daisy_duck', 6, '2023-05-05 09:00:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('bob_builder', 10, '2023-05-06 10:00:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('harry_potter', 9, '2023-05-07 09:00:00');
INSERT INTO favorites_by_user (user_username, video_id, favorited_date)
VALUES ('eric_cartman', 6, '2023-05-07 09:05:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (1, 'john_doe', '2023-05-01 12:00:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (1, 'jane_smith', '2023-05-01 13:00:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (2, 'john_doe', '2023-05-01 12:10:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (5, 'jane_smith', '2023-05-01 13:20:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (3, 'alice_wonder', '2023-05-01 14:00:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (4, 'bob_builder', '2023-05-01 15:00:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (2, 'charlie_brown', '2023-05-01 15:30:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (7, 'eric_cartman', '2023-05-03 10:15:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (8, 'fiona_shrek', '2023-05-04 12:00:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (6, 'daisy_duck', '2023-05-05 09:00:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (10, 'bob_builder', '2023-05-06 10:00:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (9, 'harry_potter', '2023-05-07 09:00:00');
INSERT INTO favorites_by_video (video_id, user_username, favorited_date)
VALUES (6, 'eric_cartman', '2023-05-07 09:05:00');







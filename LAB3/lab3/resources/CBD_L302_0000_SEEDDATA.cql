INSERT INTO users (user_id, username, name, email, registration_timestamp)
VALUES (uuid(), 'alice123', 'Alice Smith', 'alice.smith@example.com', toTimestamp(now()));
INSERT INTO users (user_id, username, name, email, registration_timestamp)
VALUES (uuid(), 'bob_the_builder', 'Bob Brown', 'bob.builder@example.com', toTimestamp(now()));
INSERT INTO users (user_id, username, name, email, registration_timestamp)
VALUES (uuid(), 'charlie_d', 'Charlie Davis', 'charlie.d@example.com', toTimestamp(now()));
INSERT INTO users (user_id, username, name, email, registration_timestamp)
VALUES (uuid(), 'daniel_w', 'Daniel Wilson', 'daniel.wilson@example.com', toTimestamp(now()));
INSERT INTO users (user_id, username, name, email, registration_timestamp)
VALUES (uuid(), 'eve_t', 'Eve Taylor', 'eve.taylor@example.com', toTimestamp(now()));


INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Nature Documentary', 'A deep dive into nature', {'nature', 'documentary'}, toTimestamp(now()));
INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'DIY Home Projects', 'Creative ideas for home improvement', {'DIY', 'home'}, toTimestamp(now()));
INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Cooking Masterclass', 'Delicious recipes to try at home', {'cooking', 'recipes'}, toTimestamp(now()));
INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Tech Reviews', 'Unbiased reviews of the latest gadgets', {'tech', 'reviews'}, toTimestamp(now()));
INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Fitness Tips', 'Stay healthy with these simple exercises', {'fitness', 'health'}, toTimestamp(now()));
INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), 27757bb3-7bb0-4094-a6ae-72c1c03da02a, 'Fitness Tips', '10 simple exercises for beginners', {'fitness', 'health'}, toTimestamp(now()));

INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), 27757bb3-7bb0-4094-a6ae-72c1c03da02a, 'Healthy Cooking', 'Delicious recipes for a healthy lifestyle', {'cooking', 'health'}, toTimestamp(now()));

INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), 27757bb3-7bb0-4094-a6ae-72c1c03da02a, 'Tech Gadgets 2024', 'Top gadgets to boost productivity', {'tech', 'gadgets'}, toTimestamp(now()));

INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), 27757bb3-7bb0-4094-a6ae-72c1c03da02a, 'DIY Home Decor', 'Creative ideas for decorating your home', {'DIY', 'home'}, toTimestamp(now()));

INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), 27757bb3-7bb0-4094-a6ae-72c1c03da02a, 'Yoga Basics', 'Relax and rejuvenate with these yoga tips', {'yoga', 'fitness'}, toTimestamp(now()));

INSERT INTO videos (video_id, author_id, name, description, tags, upload_timestamp)
VALUES (uuid(), 27757bb3-7bb0-4094-a6ae-72c1c03da02a, 'Meditation Guide', 'Learn the basics of meditation for mental health', {'meditation', 'health'}, toTimestamp(now()));



INSERT INTO comments (video_id, author_id, comment_timestamp, comment)
VALUES (uuid(), uuid(), toTimestamp(now()), 'This is so inspiring!');
INSERT INTO comments (video_id, author_id, comment_timestamp, comment)
VALUES (uuid(), uuid(), toTimestamp(now()), 'Loved the content!');
INSERT INTO comments (video_id, author_id, comment_timestamp, comment)
VALUES (uuid(), uuid(), toTimestamp(now()), 'Great tips, thanks for sharing!');
INSERT INTO comments (video_id, author_id, comment_timestamp, comment)
VALUES (uuid(), uuid(), toTimestamp(now()), 'Can’t wait to try this!');
INSERT INTO comments (video_id, author_id, comment_timestamp, comment)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, uuid(), toTimestamp(now()), 'Really helpful video!');
INSERT INTO comments (video_id, author_id, comment_timestamp, comment)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, uuid(), toTimestamp(now()), 'I dont like this video');
INSERT INTO comments (video_id, author_id, comment_timestamp, comment)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, uuid(), toTimestamp(now()), 'I want to see more videos like this');
INSERT INTO comments (video_id, author_id, comment_timestamp, comment)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, uuid(), toTimestamp(now()), 'So boring');

INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES (uuid(), 'alice123', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES (uuid(), 'bob_the_builder', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES (uuid(), 'charlie_d', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES (uuid(), 'daniel_w', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES ( cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES ( cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'charlie_d', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES ( cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'daniel_w', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES ( cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'bob_the_builder', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES ( cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'alice123', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES ( cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', toTimestamp(now()));
INSERT INTO video_followers (video_id, follower_username, follow_timestamp)
VALUES ( cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', toTimestamp(now()));

INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'alice123', 'play', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'bob_the_builder', 'pause', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'charlie_d', 'stop', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'daniel_w', 'play', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', 'play', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', 'stop', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', 'pause', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', 'play', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', 'play', toTimestamp(now()));
INSERT INTO video_events (video_id, username, event_type, event_timestamp)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 'eve_t', 'stop', toTimestamp(now()));

INSERT INTO video_ratings (video_id, rating)
VALUES (cc7bfc1e-9560-45c3-8b90-e6fb36e0f0b4, 5);
INSERT INTO video_ratings (video_id, rating)
VALUES (uuid(), 4);
INSERT INTO video_ratings (video_id, rating)
VALUES (uuid(), 3);
INSERT INTO video_ratings (video_id, rating)
VALUES (uuid(), 5);
INSERT INTO video_ratings (video_id, rating)
VALUES (uuid(), 2);

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('alice123', uuid(), 'Nature Documentary', 'A deep dive into nature', {'nature', 'documentary'}, toTimestamp(now()));
INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('bob_the_builder', uuid(), 'DIY Home Projects', 'Creative ideas for home improvement', {'DIY', 'home'}, toTimestamp(now()));
INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('charlie_d', uuid(), 'Cooking Masterclass', 'Delicious recipes to try at home', {'cooking', 'recipes'}, toTimestamp(now()));
INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('daniel_w', uuid(), 'Tech Reviews', 'Unbiased reviews of the latest gadgets', {'tech', 'reviews'}, toTimestamp(now()));
INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Fitness Tips', 'Stay healthy with these simple exercises', {'fitness', 'health'}, toTimestamp(now()));
INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Ocean Wonders', 'Exploring the mysteries of the deep sea', {'ocean', 'nature'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Woodworking Basics', 'Learn how to create furniture at home', {'DIY', 'woodworking'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Baking Secrets', 'Tips for perfect cakes and pastries', {'cooking', 'baking'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Smartphones of 2024', 'Top 5 smartphones reviewed in-depth', {'tech', 'smartphones'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Yoga for Beginners', 'Simple yoga poses to improve flexibility', {'yoga', 'fitness'}, toTimestamp(now()));
INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Wildlife Adventures', 'Discover the beauty of wildlife in their natural habitat', {'wildlife', 'adventure'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Painting Walls Like a Pro', 'Step-by-step guide to perfect wall painting', {'DIY', 'painting'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Mastering Italian Cuisine', 'Learn to cook authentic Italian dishes', {'cooking', 'italian'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Gaming Laptops 2024', 'A deep dive into the best gaming laptops', {'tech', 'gaming'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Home Cardio Workout', 'A quick cardio workout you can do at home', {'fitness', 'cardio'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Bird Watching Tips', 'How to spot and identify birds in your area', {'nature', 'birds'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Fixing a Leaky Faucet', 'Step-by-step guide to fixing common plumbing issues', {'DIY', 'plumbing'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Vegan Meal Prep', 'Quick and easy meal prep ideas for vegans', {'cooking', 'vegan'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Exploring Virtual Reality', 'A guide to the best VR headsets and experiences', {'tech', 'VR'}, toTimestamp(now()));

INSERT INTO videos_by_author (author_username, video_id, video_name, description, tags, upload_timestamp)
VALUES ('eve_t', uuid(), 'Meditation for Stress Relief', 'Simple techniques to reduce stress through meditation', {'meditation', 'wellness'}, toTimestamp(now()));


INSERT INTO comments_by_user (author_username, comment_timestamp, video_id, comment)
VALUES ('alice123', toTimestamp(now()), uuid(), 'This is so inspiring!');
INSERT INTO comments_by_user (author_username, comment_timestamp, video_id, comment)
VALUES ('bob_the_builder', toTimestamp(now()), uuid(), 'Loved the content!');
INSERT INTO comments_by_user (author_username, comment_timestamp, video_id, comment)
VALUES ('charlie_d', toTimestamp(now()), uuid(), 'Great tips, thanks for sharing!');
INSERT INTO comments_by_user (author_username, comment_timestamp, video_id, comment)
VALUES ('daniel_w', toTimestamp(now()), uuid(), 'Can’t wait to try this!');
INSERT INTO comments_by_user (author_username, comment_timestamp, video_id, comment)
VALUES ('eve_t', toTimestamp(now()), uuid(), 'Really helpful video!');
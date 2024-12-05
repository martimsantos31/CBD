INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'The High Notes', {'rock', 'indie'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'Beat Harmony', {'jazz', 'blues'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'Daisy Chains', {'pop', 'electronic'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'Solo Echo', {'classical'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'Bass Clef', {'hip-hop', 'r&b'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'The Quiet Ones', {'acoustic', 'folk'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'The Loud Ones', {'metal', 'punk'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'Rhythm & Blues', {'blues', 'r&b'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'The Sirens', {'opera', 'classical'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'After Dark', {'techno', 'trance'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'Morning Glory', {'indie', 'alternative'});
INSERT INTO artists (artist_id, name, genres) VALUES (uuid(), 'Night Owls', {'jazz', 'soul'});


INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'Main Stage', 5000);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'North Stage', 3000);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'South Stage', 3000);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'East Stage', 2000);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'West Stage', 2000);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'VIP Stage', 500);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'Acoustic Stage', 1000);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'Indoor Stage', 1500);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'Outdoor Stage', 4000);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'Festival Stage', 3500);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'Rooftop Stage', 750);
INSERT INTO stages (stage_id, name, capacity) VALUES (uuid(), 'Underground Stage', 800);

INSERT INTO performances (performance_id, artist_id, stage_id, start_time, duration, audience) VALUES (uuid(), uuid(), uuid(), dateof(now()), 60, ['John Doe', 'Jane Smith']);
INSERT INTO performances (performance_id, artist_id, stage_id, start_time, duration, audience) VALUES (uuid(), uuid(), uuid(), dateof(now()), 90, ['Jane Smith']);


INSERT INTO tickets (ticket_id, performance_id, buyer_info, price, purchase_timestamp) VALUES (uuid(), 8b132384-46b4-463b-b6de-1540c3cefbca, {'name': 'Alice', 'email': 'alice@example.com'}, 99.99, dateof(now()));
INSERT INTO tickets (ticket_id, performance_id, buyer_info, price, purchase_timestamp) VALUES (uuid(), 8b132384-46b4-463b-b6de-1540c3cefbca, {'name': 'Alice', 'email': 'alice@example.com'}, 99.99, dateof(now()));
INSERT INTO tickets (ticket_id, performance_id, buyer_info, price, purchase_timestamp) VALUES (uuid(), 8b132384-46b4-463b-b6de-1540c3cefbca, {'name': 'Alice', 'email': 'alice@example.com'}, 99.99, dateof(now()));
INSERT INTO tickets (ticket_id, performance_id, buyer_info, price, purchase_timestamp) VALUES (uuid(), 8b132384-46b4-463b-b6de-1540c3cefbca, {'name': 'Alice', 'email': 'alice@example.com'}, 99.99, dateof(now()));
INSERT INTO tickets (ticket_id, performance_id, buyer_info, price, purchase_timestamp) VALUES (uuid(), 8b132384-46b4-463b-b6de-1540c3cefbca, {'name': 'Bob', 'email': 'bob@example.com'}, 69.99, dateof(now()));


CREATE INDEX ON artists (genres);
CREATE INDEX ON stages (capacity);
CREATE INDEX ON performances (artist_id);
CREATE INDEX ON tickets (purchase_timestamp);
CREATE INDEX ON artists (name);
CREATE INDEX ON stages (name);
CREATE INDEX ON performances (duration);

CREATE FUNCTION convert_to_usd (euros DECIMAL, exchange_rate DECIMAL)
    CALLED ON NULL INPUT
    RETURNS DECIMAL
    LANGUAGE java AS $$
    return euros * exchange_rate;
$$;

CREATE AGGREGATE avg_price(state DECIMAL, val DECIMAL)
    SFUNC state_accum
    STYPE DECIMAL
    INITCOND 0
    LANGUAGE java AS $$
    return state + val;
$$;


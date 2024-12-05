CREATE KEYSPACE MusicFestival WITH replication = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
    };

USE MusicFestival;


CREATE TABLE artists(
    artist_id UUID PRIMARY KEY,
    name TEXT,
    genres SET<TEXT>,
);

CREATE TABLE stages(
    stage_id UUID PRIMARY KEY,
    name TEXT,
    capacity INT,
);

CREATE TABLE performances(
    performance_id UUID PRIMARY KEY,
    artist_id UUID,
    stage_id UUID,
    start_time TIMESTAMP,
    duration INT,
    audience LIST<TEXT>,
);

CREATE TABLE tickets(
                        performance_id UUID,
                        purchase_timestamp TIMESTAMP,
                        ticket_id UUID,
                        buyer_info MAP<TEXT, TEXT>,
                        price DECIMAL,
                        PRIMARY KEY (performance_id, purchase_timestamp, ticket_id)
) WITH CLUSTERING ORDER BY (purchase_timestamp ASC, ticket_id ASC);









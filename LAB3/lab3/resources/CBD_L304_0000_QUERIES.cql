UPDATE artists SET genres = genres + {'soul'} WHERE artist_id = cab38a2c-6566-4f57-bffd-10532153527b;

UPDATE artists SET genres = genres - {'folk'} WHERE artist_id = 449819be-e4ff-4611-bd64-25fd2ff68a70 ;

UPDATE performances SET audience = audience + ['Jane Doe'] WHERE performance_id = cbc32c2c-d047-4928-9200-03a5556cf762;

UPDATE tickets SET buyer_info['email'] = 'newemail@example.com' WHERE ticket_id = bb7c209b-6213-4cea-828e-4bb1722d0902;

UPDATE performances SET audience = audience - ['John Doe'] WHERE performance_id = cbc32c2c-d047-4928-9200-03a5556cf762;

UPDATE tickets SET price = 190 WHERE ticket_id = bb7c209b-6213-4cea-828e-4bb1722d0902;

DELETE FROM artists WHERE artist_id = cab38a2c-6566-4f57-bffd-10532153527b;

DELETE FROM stages WHERE stage_id = ae0492dd-be1d-4367-bed9-4481b0facf90;

DELETE FROM performances WHERE performance_id = 112c2f69-f51b-44fa-b7e1-8ba17f72b655;

DELETE FROM tickets WHERE ticket_id = 5c7b76b9-d2db-4213-a813-8fdf19ed1648;


SELECT * FROM artists WHERE genres CONTAINS 'rock';

SELECT * FROM performances WHERE stage_id = 6f1e6626-6651-4490-8f75-0e1c7e437c4c;

SELECT * FROM tickets WHERE performance_id = 8b132384-46b4-463b-b6de-1540c3cefbca ORDER BY purchase_timestamp ASC LIMIT 4;

SELECT * FROM stages WHERE capacity > 2000
ALLOW FILTERING ;

SELECT * FROM performances WHERE artist_id = 4d024443-b6a1-49a6-b4aa-5c7e026c026c;

SELECT * FROM tickets WHERE purchase_timestamp < toTimestamp(now())
ALLOW FILTERING;

SELECT * FROM tickets WHERE purchase_timestamp = '2024-11-25 03:28:55.677000+0000'
ALLOW FILTERING;

SELECT * FROM artists WHERE genres CONTAINS 'blues' LIMIT 10;

SELECT name, genres FROM artists LIMIT 5;

SELECT * FROM tickets WHERE price < 100
ALLOW FILTERING ;

SELECT * FROM tickets WHERE buyer_info CONTAINS KEY 'email'
ALLOW FILTERING ;



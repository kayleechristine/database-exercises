USE codeup_test_db;

SELECT album AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band Release' FROM albums WHERE album = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS 'Hotel California Genre' FROM albums WHERE album = 'Hotel California';
SELECT album AS 'Albums with Less Than 20 Million Sold' FROM albums WHERE sales < 20;
SELECT album AS 'Rock Albums' FROM albums WHERE genre = 'Rock' | 'rock';
USE codeup_test_db;

SELECT album AS 'Post-1991 Albums', release_date FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
SELECT album AS 'Post-1991 Albums', release_date FROM albums WHERE release_date > 1991;

SELECT album AS 'Disco Albums', genre FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';
SELECT album AS 'Disco Albums', genre FROM albums WHERE genre = 'Disco';

SELECT album AS 'The Beatles Albums' FROM albums WHERE artist = 'The Beatles';
DELETE FROM albums WHERE artist = 'The Beatles';
SELECT album AS 'The Beatles Albums' FROM albums WHERE artist = 'The Beatles';
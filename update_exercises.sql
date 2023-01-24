USE codeup_test_db;

SELECT album, sales AS 'All Albums' FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT album, sales AS 'Gaining Popularity' FROM albums;

SELECT album AS 'Pre-1980 Albums', release_date FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = 1822 WHERE release_date >= 1980;
SELECT album AS 'Pre-1980 Albums', release_date FROM albums WHERE release_date < 1980;

SELECT artist, album AS 'Michael Jackson Albums' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT artist, album AS 'Peter Jackson Albums' FROM albums WHERE artist = 'Peter Jackson';

SELECT * FROM albums;
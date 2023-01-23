USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    album  VARCHAR(50) NOT NULL,
    release_date  DATE NOT NULL,
    sales DOUBLE NOT NULL,
    genre TEXT NOT NULL,
    PRIMARY KEY (id)
    );
SHOW TABLES;
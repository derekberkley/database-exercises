USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist varchar(100),
    album_name varchar(100),
    release_date date,
    sales float,
    genre varchar(50),
    PRIMARY KEY (id)
);
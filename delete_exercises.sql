USE codeup_test_db;

# TODO: Write SELECT statements for:
#  Albums released after 1991
#  Albums with the genre 'disco'
#  Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT album_name, release_date FROM albums
WHERE release_date > '1991%';

SELECT album_name, genre FROM albums
WHERE genre = 'Disco';

SELECT artist, album_name FROM albums
WHERE artist LIKE 'Whitney Houston%';
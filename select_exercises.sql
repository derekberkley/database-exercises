use codeup_test_db;

-- TODO: Write SELECT statements to output each of the following with a caption:
--  TODO: All albums in your tables
        select album_name from albums;

--  TODO: All albums released before 1980
        SELECT album_name from albums
        WHERE release_date < '1980&';

--  TODO: All albums by Michael Jackson
        SELECT album_name from albums
        WHERE artist LIKE 'Michael Jackson';

# TODO: After each SELECT add an UPDATE statement to:
#  Make all the albums 10 times more popular (sales * 10)

   UPDATE albums
       SET sales = sales * 10;

    select album_name, sales
    FROM albums;

# TODO: Move all the albums before 1980 back to the 1800s.
    UPDATE albums
        SET release_date = release_date - 100;

    SELECT album_name, release_date
    from albums;

# TODO: Change 'Michael Jackson' to 'Peter Jackson'
    UPDATE albums
    SET artist = 'Peter Jackson'
    WHERE artist = 'Michael Jackson';

    SELECT album_name, artist
    from albums;
use codeup_test_db;

# TODO: In select_exercises.sql write queries to find the following information.
#  Before each item, output a caption explaining the results:

# TODO: The name of all albums by Pink Floyd.
SELECT album_name as " These are Pink Floyd Albums"
FROM albums
WHERE artist = 'Pink Floyd';

# TODO: The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date as "The year Sgt. Pepper's Lonely Hearts Club was released"
FROM albums
Where album_name =  'Sgt. Pepper\'s Lonely Hearts Club Band';

# TODO: The genre for Nevermind
SELECT genre as "The genre for Nevermind"
FROM albums
Where album_name = 'Nevermind';

# TODO: Which albums were released in the 1990s
SELECT album_name as "1990's albums"
FROM albums
WHERE release_date LIKE '189%';

# TODO: Which albums had less than 20 million certified sales
SELECT album_name as "Less than 20 million certified sales"
FROM albums
Where sales < 2000000;

# TODO: All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT album_name as "Rock Albums"
from albums
Where genre = 'Rock';
# does not include other genres because the query is searching for a specific string with no % to allow for fringe selections
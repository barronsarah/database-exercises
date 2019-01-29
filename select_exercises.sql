USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'info';
SELECT name FROM ALBUMS where artist = 'pink floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released
' AS 'info';
SELECT release_date from albums where name like '%sgt. pepper%';

SELECT 'The genre for Nevermind' AS 'info';
SELECT genre FROM ALBUMS where name = 'nevermind';

SELECT 'Which albums were released in the 1990s' AS 'info';
SELECT name FROM ALBUMS where release_date between 1990 and 1999;

SELECT 'Which albums had less than 20 million certified sales' AS 'info';
SELECT name FROM ALBUMS where sales < 20;

SELECT 'All the albums with a genre of "Rock"' AS 'info';
SELECT * FROM ALBUMS where genre like '%rock%';


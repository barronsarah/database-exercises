USE CODEUP_TEST_DB;

-- Make all the albums 10 times more popular (sales * 10)
SELECT 'ALL ALBUMS IN TABLE' AS 'info';
SELECT NAME FROM ALBUMS;
UPDATE ALBUMS
SET SALES = SALES * 10;

-- Move all the albums before 1980 back to the 1800s.
SELECT 'All albums released before 1980' AS 'INFO';
SELECT NAME FROM ALBUMS WHERE RELEASE_DATE < 1980;
UPDATE ALBUMS
SET RELEASE_DATE = RELEASE_DATE -100
WHERE RELEASE_DATE <1980;

-- Change 'Michael Jackson' to 'Peter Jackson'
SELECT 'All albums by Michael Jackson' AS 'info';
SELECT NAME FROM ALBUMS WHERE ARTIST LIKE '%JACKSON%';
UPDATE ALBUMS
SET ARTIST = "Peter Jackson"
WHERE ARTIST LIKE '%JACKSON%';

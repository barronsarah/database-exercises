use albums;

ALTER TABLE albums ADD UNIQUE (name, artist);

SELECT distinct artist, name from ALBUMS;

-- INSERT INTO ALBUMS(artist, name)
-- values('adele', 21);
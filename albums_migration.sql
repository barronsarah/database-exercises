USE codeup_test_db;

CREATE TABLE ALBUMS(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist VARCHAR(75),
  name VARCHAR(75),
  release_date YEAR,
  sales FLOAT UNSIGNED,
  genre VARCHAR(120),
--   PRIMARY KEY (id) <-- we can add this primary key to the initial line
);

DESCRIBE ALBUMS;
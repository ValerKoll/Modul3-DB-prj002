-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS moviess;
DROP SEQUENCE IF EXISTS movies_id_seq;

-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS movies_id_seq;
CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  release_year INTEGER
);

INSERT INTO movies (title, genre, release_year) VALUES ('The great story', 'drama', 1920);
INSERT INTO movies (title, genre, release_year) VALUES ('Another time', 'sci-fi', 1830);
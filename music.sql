-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

-- CREATE TABLE songs
-- (
--   id SERIAL PRIMARY KEY,
--   title TEXT NOT NULL,
--   duration_in_seconds INTEGER NOT NULL,
--   release_date DATE NOT NULL,
--   artists TEXT[] NOT NULL,
--   album TEXT NOT NULL,
--   producers TEXT[] NOT NULL
-- );

-- INSERT INTO songs
--   (title, duration_in_seconds, release_date, artists, album, producers)
-- VALUES
--   ('MMMBop', 238, '04-15-1997', '{"Hanson"}', 'Middle of Nowhere', '{"Dust Brothers", "Stephen Lironi"}'),
--   ('Bohemian Rhapsody', 355, '10-31-1975', '{"Queen"}', 'A Night at the Opera', '{"Roy Thomas Baker"}'),
--   ('One Sweet Day', 282, '11-14-1995', '{"Mariah Cary", "Boyz II Men"}', 'Daydream', '{"Walter Afanasieff"}'),
--   ('Shallow', 216, '09-27-2018', '{"Lady Gaga", "Bradley Cooper"}', 'A Star Is Born', '{"Benjamin Rice"}'),
--   ('How You Remind Me', 223, '08-21-2001', '{"Nickelback"}', 'Silver Side Up', '{"Rick Parashar"}'),
--   ('New York State of Mind', 276, '10-20-2009', '{"Jay Z", "Alicia Keys"}', 'The Blueprint 3', '{"Al Shux"}'),
--   ('Dark Horse', 215, '12-17-2013', '{"Katy Perry", "Juicy J"}', 'Prism', '{"Max Martin", "Cirkut"}'),
--   ('Moves Like Jagger', 201, '06-21-2011', '{"Maroon 5", "Christina Aguilera"}', 'Hands All Over', '{"Shellback", "Benny Blanco"}'),
--   ('Complicated', 244, '05-14-2002', '{"Avril Lavigne"}', 'Let Go', '{"The Matrix"}'),
--   ('Say My Name', 240, '11-07-1999', '{"Destiny''s Child"}', 'The Writing''s on the Wall', '{"Darkchild"}');

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO artists
  (name)
VALUES
  ('Hanson'), 
  ('Queen'),
  ('Mariah Cary'), 
  ('Boys II Men'), 
  ('Lady Gaga'), 
  ('Bradley Cooper'),
  ('Nickelback'), 
  ('Jay-Z'), 
  ('Alicia Keys'),
  ('Katy Perry'),
  ('Juicy J'),
  ('Maroon 5'),
  ('Christina Aguilera'), 
  ('Avril Lavigne'),
  ('Destiny''s Child')
;
------------------------------------------------------------------------
CREATE TABLE album
(
  id SERIAL PRIMARY KEY, 
  name TEXT NOT NULL, 
  artist_id INTEGER NOT NULL
);

INSERT INTO album
  (name, artist_id)
VALUES 
  ('Middle of Nowhere', 1),
  ('A Night at the Opera', 2),
  ('Daydream', 3),
  ('A Star is Born', 5),
  ('Silver Side Up', 7),
  ('The Blueprint 3', 8),
  ('Prism', 10),
  ('Hands All Over', 12),
  ('Let Go', 14),
  ('The Writing''s on the Wall', 15)
;
------------------------------------------------------------------------
CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO producers 
  (name)
VALUES
  ('Dust Brothers'),
  ('Stephen Lironi'),
  ('Roy Thomas Baker'),
  ('Walter Afanasieff'),
  ('Benjamin Rice'),
  ('Rick Parashar'),
  ('Al Shux'),
  ('Max Martin'),
  ('Cirkut'),
  ('Shellback'),
  ('Benny Blanco'),
  ('The Matrix'),
  ('Darkchild')
;
------------------------------------------------------------------------
CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL, 
  release_date DATE NOT NULL,
  album_id INTEGER NOT NULL, 
  featuring_artist_id TEXT,
  producer_id INTEGER NOT NULL, 
  second_producer_id INTEGER
);

INSERT INTO songs
  (name, duration_in_seconds, release_date, album_id, featuring_artist_id, producer_id, second_producer_id)
VALUES 
  ('MMMBop', 238, '04-15-1997', 1, NULL, 1, 2),
  ('Bohemian Rhapsody', 355, '10-31-1975', 2, NULL, 3, NULL),
  ('One Sweet Day', 282, '11-14-1995', 3, 4, 4, NULL),
  ('Shallow', 216, '09-27-2018', 4, NULL, 5, NULL),
  ('How You Remind Me', 223, '08-21-2001', 5, NULL, 6, NULL),
  ('New York State of Mind', 276, '10-20-2009', 6, 9, 7, NULL),
  ('Dark Horse', 215, '12-17-2013', 7, 11, 8, 9),
  ('Moves Like Jagger', 201, '06-21-2011', 8, 13, 10, 11),
  ('Complicated', 244, '05-14-2002', 9, NULL, 12, NULL),
  ('Say My Name', 240, '11-07-1999', 10, NULL, 13, NULL)
;
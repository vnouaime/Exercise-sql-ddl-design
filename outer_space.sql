-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets 
(
  id SERIAL PRIMARY KEY,     
  name TEXT NOT NULL,                                                                                                        
  orbital_period_in_years FLOAT NOT NULL
);

INSERT INTO planets
  (name, orbital_period_in_years)
VALUES
  ('Earth', 1.00), 
  ('Mars', 1.88), 
  ('Venus', 0.62), 
  ('Neptune', 164.8), 
  ('Proxima Centauri b', 0.03), 
  ('Gliese 876 b', 0.23)
;
--------------------------------------------------------------------
CREATE TABLE galaxies 
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO galaxies 
  (name)
VALUES                
  ('Milky Way')
;
--------------------------------------------------------------------
CREATE TABLE moons 
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  planet_id INTEGER NOT NULL
);

INSERT INTO moons 
  (name, planet_id)
VALUES
  ('The Moon', 1), 
  ('Phobos', 2), 
  ('Deimos', 2), 
  ('Naiad', 4), 
  ('Thalassa', 4), 
  ('Despina', 4), 
  ('Galatea', 4), 
  ('Larissa', 4), 
  ('S/2004 N 1', 4), 
  ('Proteus', 4), 
  ('Triton', 4), 
  ('Nereid', 4), 
  ('Halimede', 4), 
  ('Sao', 4), 
  ('Laomedeia', 4), 
  ('Psamathe', 4), 
  ('Neso', 4)
;
--------------------------------------------------------------------
CREATE TABLE celestials
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO celestials
  (name)                
VALUES 
  ('The Sun'), 
  ('Proxima Centauri'), 
  ('Gliese 876')
;
--------------------------------------------------------------------
CREATE TABLE galaxies_planets 
(
  galaxy_id INTEGER NOT NULL,
  planet_id INTEGER NOT NULL
);

INSERT INTO galaxies_planets 
  (galaxy_id, planet_id)
VALUES 
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 5),
  (1, 6)
;
--------------------------------------------------------------------
CREATE TABLE planets_celestials
(
  planet_id INTEGER NOT NULL,
  celestials_id INTEGER NOT NUll
);

INSERT INTO planets_celestials
  (planet_id, celestials_id)
VALUES
  (1, 1),
  (2, 1),
  (3, 1), 
  (4, 1),
  (5, 2),
  (6, 3)
;
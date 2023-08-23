-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE customers 
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL, 
  last_name TEXT NOT NULL
);

INSERT INTO customers 
  (first_name, last_name)
VALUES
  ('Jennifer', 'Finch'),
  ('Thadeus', 'Gathercoal'),
  ('Sonja', 'Pauley'),
  ('Waneta', 'Skeleton'),
  ('Berkie', 'Wycliff'),
  ('Alvin', 'Leathes'),
  ('Cory', 'Squibbes')
;
----------------------------------------------------------
CREATE TABLE airlines 
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO airlines
  (name)
VALUES
  ('United'),
  ('British Airways'),
  ('Delta'), 
  ('TUI Fly Belgium'), 
  ('Air China'), 
  ('American Airlines'), 
  ('Avianca Brasil')
;
----------------------------------------------------------
CREATE TABLE cities
(
  id SERIAL PRIMARY KEY,
  city TEXT NOT NULL, 
  country TEXT NOT NULl
);

INSERT INTO cities
  (city, country)
VALUES
  ('Washington DC', 'United States'), 
  ('Tokyo', 'Japan'),
  ('Los Angeles','United States'),
  ('Seattle', 'United States'),
  ('Paris', 'France'),
  ('Dubai', 'UAE'),
  ('New York', 'United States'),
  ('Cedar Rapids', 'United States'),
  ('Charlotte', 'United States'),
  ('Sao Paolo', 'Brazil'),
  ('London', 'United Kingdom'),
  ('Las Vegas', 'United States'),
  ('Mexico City', 'Mexico'),
  ('Casablanca', 'Morocco'),
  ('Beijing', 'China'),
  ('Chicago', 'United States'),
  ('New Orleans', 'United States'),
  ('Santiago', 'Chile')
;
----------------------------------------------------------
CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  seat TEXT NOT NULL,
  flight_id INTEGER NOT NULL
);

INSERT INTO tickets
  (customer_id, seat, flight_id)
VALUES 
  (1, '33B', 1),  
  (2, '8A', 2),  
  (3, '12F', 3),  
  (1, '20A', 4),  
  (4, '23D', 5),  
  (2, '18C', 6), 
  (5, '9E', 7),  
  (6, '1A', 8),  
  (5, '32B', 9),  
  (7, '10D', 10)
;
----------------------------------------------------------
CREATE TABLE flights
(
  id SERIAL PRIMARY KEY,
  airline_id INTEGER NOT NULL,
  departure_time TIMESTAMP NOT NULL,
  arrival_time TIMESTAMP NOT NULL, 
  depart_from_id INTEGER NOT NULL, 
  arrive_to_id INTEGER NOT NULL
);

INSERT INTO flights
  (airline_id, departure_time, arrival_time, depart_from_id, arrive_to_id)
VALUES
  (1, '2018-04-08 09:00:00', '2018-04-08 12:00:00', 1, 4),
  (2, '2018-12-19 12:45:00', '2018-12-19 16:15:00', 2, 11),
  (3, '2018-01-02 07:00:00', '2018-01-02 08:03:00', 3, 12),
  (3, '2018-04-15 16:50:00', '2018-04-15 21:00:00', 4, 13),
  (4, '2018-08-01 18:30:00', '2018-08-01 21:50:00', 5, 14),
  (5, '2018-10-31 01:15:00', '2018-10-31 12:55:00', 6, 15),
  (1, '2019-02-06 06:00:00', '2019-02-06 07:47:00', 7, 9),
  (6, '2018-12-22 14:42:00', '2018-12-22 15:56:00', 8, 16),
  (6, '2019-02-06 16:28:00', '2019-02-06 19:18:00', 9, 17),
  (1, '2018-04-08 09:00:00', '2018-04-08 12:00:00', 10, 18)
;

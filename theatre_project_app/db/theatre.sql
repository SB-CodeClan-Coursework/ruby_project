DROP TABLE customers;
DROP TABLE showtimes;
-- DROP TABLE premshowtimes;
DROP TABLE shows;

CREATE TABLE shows
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
);

CREATE TABLE showtimes
(
  id SERIAL PRIMARY KEY,
  showdate VARCHAR(255),
  showtime VARCHAR(255)
);

-- CREATE TABLE premshowtimes
-- (
--   id SERIAL PRIMARY KEY,
--   showdate VARCHAR(255),
--   showtime VARCHAR(255),
-- )

CREATE TABLE customers
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  premium BOOLEAN,
  show INT REFERENCES shows(id),
  showdate INT REFERENCES showtimes(id),
  showtime INT REFERENCES showtimes(id)
  -- premshowdate INT REFERENCES premshowtimes(id)
  -- premshowtime INT REFERENCES premshowtimes(id)
);

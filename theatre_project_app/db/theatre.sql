DROP TABLE customers;
-- DROP TABLE showtimes;
-- DROP TABLE premshowtimes;
DROP TABLE shows;

CREATE TABLE shows
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  showtime VARCHAR(255) NOT NULL,
  maxcapacity INT
);

CREATE TABLE customers
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  premium BOOLEAN,
  show_id INT REFERENCES shows(id) ON DELETE CASCADE
);

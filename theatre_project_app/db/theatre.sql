DROP TABLE shows;
DROP TABLE customers;


CREATE TABLE shows
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  showdate VARCHAR(255) NOT NULL,
  showtime VARCHAR(255) NOT NULL,
  premiumDate VARCHAR(255) NOT NULL,
  premiumTime VARCHAR(255) NOT NULL
);

CREATE TABLE customers
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  premium BOOLEAN,
  show INT REFERENCES shows(id)
);

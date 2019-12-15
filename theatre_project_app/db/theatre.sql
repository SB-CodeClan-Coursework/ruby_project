DROP TABLE customers;
DROP TABLE shows;

CREATE TABLE shows
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  premium1 VARCHAR(255),
  premium2 VARCHAR(255),
  premium3 VARCHAR(255),
  showdate1 VARCHAR(255),
  showdate2 VARCHAR(255),
  showdate3 VARCHAR(255),
  showdate4 VARCHAR(255),
  showdate5 VARCHAR(255),
  showdate6 VARCHAR(255),
  showdate7 VARCHAR(255),
  showdate8 VARCHAR(255),
  showdate9 VARCHAR(255),
  showdate10 VARCHAR(255),
  showdate11 VARCHAR(255),
  showdate12 VARCHAR(255)
);

CREATE TABLE customers
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  premium BOOLEAN,
  show INT REFERENCES shows(id),
  showdate INT REFERENCES shows(id)
);

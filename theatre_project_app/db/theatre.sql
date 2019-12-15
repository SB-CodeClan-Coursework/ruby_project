DROP TABLE shows;
DROP TABLE customers;


CREATE TABLE shows
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  premium1 VARCHAR(255),
  premium2 VARCHAR(255),
  premium3 VARCHAR(255),
  showDate1 VARCHAR(255),
  showDate2 VARCHAR(255),
  showDate3 VARCHAR(255),
  showDate4 VARCHAR(255),
  showDate5 VARCHAR(255),
  showDate6 VARCHAR(255),
  showDate7 VARCHAR(255),
  showDate8 VARCHAR(255),
  showDate9 VARCHAR(255),
  showDate10 VARCHAR(255),
  showDate11 VARCHAR(255),
  showDate12 VARCHAR(255)
);

CREATE TABLE customers
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  premium BOOLEAN,
  show INT REFERENCES shows(id),
  showDate INT REFERENCES shows(showDate1)
);

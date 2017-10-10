DROP TABLE IF EXISTS bounty;
CREATE TABLE bounty(
  id SERIAL8 PRIMARY KEY,
  species VARCHAR(255),
  bounty_value INT4,
  danger_level VARCHAR(255)
);

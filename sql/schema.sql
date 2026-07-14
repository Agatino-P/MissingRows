CREATE SCHEMA IF NOT EXISTS people;

CREATE TABLE IF NOT EXISTS people.from_rows (
    id   UUID PRIMARY KEY,
    name CHAR(20)
);

CREATE TABLE IF NOT EXISTS people.to_rows (
    id   UUID PRIMARY KEY,
    name CHAR(20)
);

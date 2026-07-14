# MissingRows

Tiny POC for finding rows present in one table but missing from another, using a
`LEFT JOIN ... IS NULL` anti-join in Postgres.

## Setup

```sh
docker compose -f docker-compose/docker-compose.yml up -d
```

Starts Postgres 17 on `localhost:5432` (user/password `postgres`).

## Usage

Run against the default `postgres` database:

```sh
psql -h localhost -U postgres -d postgres -f sql/schema.sql   # people.from_rows / people.to_rows
psql -h localhost -U postgres -d postgres -f sql/seed.sql     # 5 rows in from_rows, 3 copied to to_rows
psql -h localhost -U postgres -d postgres -f sql/count.sql    # total vs missing count
```

Expected output:

```
 table_name | total_rows | num_missing_rows
------------+------------+------------------
 rows       |          5 |                2
```

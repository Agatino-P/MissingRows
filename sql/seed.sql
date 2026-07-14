TRUNCATE people.from_rows, people.to_rows;

INSERT INTO people.from_rows (id, name)
SELECT gen_random_uuid(), 'person' || i
FROM generate_series(1, 5) AS i;

INSERT INTO people.to_rows (id, name)
SELECT id, name
FROM people.from_rows
ORDER BY name
LIMIT 3;

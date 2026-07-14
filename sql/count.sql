SELECT 'rows' AS table_name,
       count(*) AS total_rows,
       count(*) FILTER (WHERE t.id IS NULL) AS num_missing_rows
FROM people.from_rows f
LEFT JOIN people.to_rows t ON f.id = t.id;

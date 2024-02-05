SELECT name, email, id, cohort_id
FROM students
WHERE email NOT ILIKE ('%gmail%') AND phone IS NULL
ORDER BY name
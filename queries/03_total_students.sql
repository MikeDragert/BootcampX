SELECT count(*) AS student_count
FROM students
WHERE cohort_id IN (1, 2, 3);

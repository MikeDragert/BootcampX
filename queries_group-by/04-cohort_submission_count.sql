SELECT cohorts.name as cohort_name, count(assignment_submissions.id) as total_submissions
FROM cohorts
JOIN students
ON students.cohort_id = cohorts.id
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.id);
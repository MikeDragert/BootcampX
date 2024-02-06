SELECT teachers.name,
      MIN(cohorts.name) as cohort,
      count(assistance_requests.*) as number_of_assistances
FROM assistance_requests
JOIN students
ON students.id = assistance_requests.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
JOIN teachers
ON teachers.id = assistance_requests.teacher_id
where cohorts.name = 'JUL02'
GROUP BY teachers.name
ORDER BY teachers.name

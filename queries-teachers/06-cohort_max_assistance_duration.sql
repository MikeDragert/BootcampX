SELECT cohorts.name, AVG(completed_at - started_at)  as average_assistance_time
FROM assistance_requests
JOIN students
ON students.id = assistance_requests.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING AVG(completed_at - started_at)  >= ALL (
  SELECT AVG(completed_at - started_at) 
  FROM assistance_requests
  JOIN students
  ON students.id = assistance_requests.student_id
  JOIN cohorts
  ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name
)
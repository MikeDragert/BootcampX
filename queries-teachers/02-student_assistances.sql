SELECT COUNT(*) as total_assistances, 
  students.name
FROM students
JOIN assistance_requests
ON assistance_requests.teacher_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name


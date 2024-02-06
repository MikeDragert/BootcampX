SELECT day, COUNT(*) as number_of_assignments, sum(duration) as total_duration
FROM assignments
GROUP BY assignments.day
ORDER BY day

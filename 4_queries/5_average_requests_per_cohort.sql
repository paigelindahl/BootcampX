SELECT cohorts.name as cohort, AVG(completed_at - started_at) as average_request_time
FROM students
JOIN cohorts ON cohorts.id = cohort_id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
ORDER BY average_request_time;

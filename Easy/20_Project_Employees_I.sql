SELECT p.project_id, ROUND(AVG(e.experience_years * 1.00), 2) AS average_years
FROM project p
JOIN employee e
ON p.employee_id = e.employee_id
group by p.project_id;
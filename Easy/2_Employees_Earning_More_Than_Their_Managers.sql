--Employees Earning More Than Their Managers
SELECT e1.name as Employee from employee e1
JOIN employee e2
on e1.managerid = e2.id
where e1.salary > e2.salary;
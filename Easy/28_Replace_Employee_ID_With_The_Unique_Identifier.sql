select u.unique_id, e.name
from employees e
left join  Employeeuni u 
on e.id = u.id;
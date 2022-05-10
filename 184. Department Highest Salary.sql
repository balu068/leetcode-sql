select d.name as Department, e.name as Employee, e.salary as Salary
from Employee e
left join department d
on e.departmentId=d.id
where concat(e.salary,e.departmentId) in (select concat(max(salary), departmentId) from employee group by departmentId)
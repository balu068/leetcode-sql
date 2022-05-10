select max(salary) SecondHighestSalary
from employee
where salary not in
    (select max(salary)
    from employee)
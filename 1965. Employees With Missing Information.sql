select new2.employee_id
from
    (select (case
    when new.id1 is null then new.id2
    when new.id2 is null then new.id1
    end) as employee_id
    from
        (select e.employee_id as id1, e.name, s.employee_id as id2, s.salary
        from employees as e
        left join salaries as s
        on e.employee_id =s.employee_id
        union
        select e.employee_id id1, e.name, s.employee_id id1, s.salary
        from employees as e
        right join salaries as s
        on e.employee_id =s.employee_id) as new) new2
where new2.employee_id is not null
order by new2.employee_id
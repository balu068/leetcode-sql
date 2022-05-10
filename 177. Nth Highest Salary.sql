CREATE FUNCTION getNthHighestSalary(N INT)
RETURNS INT
BEGIN
        DECLARE i int default N-1;
  RETURN (
      select max(distinct salary)
      from employee
      where salary not in 
      (select * from
        (select distinct salary
         from employee
         order by salary desc 
         limit i)as n) 
  );
END
select a.name as department
     , e.name as employee
     , e.salary
from employee as e
    inner join (select d.id
                     , d.name
                     , max(salary) as max_sal
                from employee as e
                    inner join department as d
                        on e.departmentid = d.id
                group by 1) as a
        on e.departmentid = a.id
where e.salary = a.max_sal;
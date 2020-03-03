select 
    employee
    ,count(child)
from (
    select 
        p1.employee as employee
        ,child_1 as child
    from 
        personnel p1
        union all (
            select employee, child_2 as child 
            from personnel p2
        )
        union all (
            select employee, child_3 as child
            from personnel p3
        )
    order by 
        employee
) m
group by 
    employee
;
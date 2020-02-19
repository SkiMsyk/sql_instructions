select 
    employee
    ,child_1 as child
from personnel
union all 
select employee, child_2 as child from personnel
union all
select employee, child_3 as child from personnel
;
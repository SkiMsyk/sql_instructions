select 
    emp.employee
    ,children.child 
from
    personnel emp
    left outer join children 
    on children.child in (emp.child_1, emp.child_2, emp.child_3)
;
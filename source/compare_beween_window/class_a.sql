select 
    coalesce(a.id, b.id) as id 
    ,a.name as a_name
    ,b.name as b_name 
from 
    class_a a 
    full outer join 
    class_b b 
    on a.id = b.id 
;
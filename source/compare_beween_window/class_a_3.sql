select 
    b.id as id 
    ,b.name as b_name 
from
    class_a a 
    right outer join 
    class_b b 
    on a.id = b.id 
where 0=0
    and a.name is null 
;
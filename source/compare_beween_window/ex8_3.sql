select
    coalesce(a.id, b.id) as id
    ,coalesce(b.name, a.name) as name
from 
    class_a a 
    full join 
    class_b_ex b
    on a.id = b.id 
; 
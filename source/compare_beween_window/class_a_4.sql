select 
    coalesce(a.id, b.id) as id 
    ,coalesce(a.name, b.name) as name 
from 
    class_a a 
    full outer join 
    class_b b 
    on a.id = b.id 
where a.name is null or b.name is null
;